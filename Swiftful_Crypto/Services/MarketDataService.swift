//
//  MarketDataService.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/03/18.
//

import Foundation
import Combine

class MarketDataService
{
    @Published var marketData: MarketDataModel? = nil
    
    var marketDataSubscription: AnyCancellable?
    
    init()
    {
        getData()
    }
    
    // Could use RxSwift & Alamofire
    private func getData()
    {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue:
            { [weak self](returnedGlobalData) in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
