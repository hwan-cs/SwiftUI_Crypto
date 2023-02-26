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
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataService = CoinDataService()
    
    private var cancellables = Set<AnyCancellable>()
    
    init()
    {
        addSubscribers()
    }
    
    func addSubscribers()
    {
        dataService.$allCoins
            .sink
            { [weak self] coinModel in
                self?.allCoins = coinModel
            }
            .store(in: &cancellables)
    }
}
