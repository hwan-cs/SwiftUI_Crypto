//
//  CoinDataService.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/26.
//

import Foundation
import Combine

class CoinDataService
{
    @Published var allCoins: [CoinModel] = []
    
    var coinSubscription: AnyCancellable?
    
    init()
    {
        getCoins()
    }
    
    // Could use RxSwift & Alamofire
    private func getCoins()
    {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=krw&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else { print("??"); return }
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue:
            { [weak self](returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
    }
}
