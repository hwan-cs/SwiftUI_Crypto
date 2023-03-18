//
//  HomeViewModel.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/26.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject
{
    @Published var statistics: [StatisticsModel] = []
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init()
    {
        addSubscribers()
    }
    
    func addSubscribers()
    {
        $searchText
            .combineLatest(coinDataService.$allCoins)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink
            { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
        
        marketDataService.$marketData
            .map(mapGlobalMarketData)
            .sink
            { [weak self] (returnedStats) in
                self?.statistics = returnedStats
            }
            .store(in: &cancellables)
    }
    
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel]
    {
        guard !text.isEmpty else
        {
            return coins
        }
        
        let lowercasedText = text.lowercased()
        
        let filteredCoins = coins.filter
        { (coin) -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
        }
        
        return filteredCoins
    }
    
    private func mapGlobalMarketData(marketDataModel: MarketDataModel?) -> [StatisticsModel]
    {
        var stats: [StatisticsModel] = []
        
        guard let data = marketDataModel else { return stats }
        
        let marketCap = StatisticsModel(title: "Market Cap", value: data.marketCap, percentageChange: data.marketCapChangePercentage24HUsd)
        stats.append(marketCap)
        
        let volume = StatisticsModel(title: "24H Volume", value: data.volume)
        stats.append(volume)
        
        let btcDominance = StatisticsModel(title: "Bitcoin Dominance", value: data.btcDominance)
        stats.append(btcDominance)
        
        let portfolio = StatisticsModel(title: "Portfolio value", value: "$0.00", percentageChange: 0)
        stats.append(portfolio)
        
        return stats
    }
}
