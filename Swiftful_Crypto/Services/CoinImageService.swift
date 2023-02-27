//
//  CoinImageService.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/27.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService
{
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    
    private let coin: CoinModel
    
    init(coin: CoinModel)
    {
        self.coin = coin
        getCoinImage()
    }
    
    func getCoinImage()
    {
        guard let url = URL(string: coin.image) else { print("??"); return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion
                  , receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
}
