//
//  HomeStatsView.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/03/18.
//

import SwiftUI

struct HomeStatsView: View
{
    @EnvironmentObject private var vm: HomeViewModel
    
    let statistics: [StatisticsModel] = [
        StatisticsModel(title: "Title", value: "Value", percentageChange: 1),
        StatisticsModel(title: "Title", value: "Value"),
        StatisticsModel(title: "Title", value: "Value"),
        StatisticsModel(title: "Title", value: "Value", percentageChange: -7),
    ]
    
    @Binding var showPortfolio: Bool
    
    var body: some View
    {
        HStack
        {
            ForEach(vm.statistics)
            { stat in
                StatisticsView(stats: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width, alignment: showPortfolio ? .trailing : .leading)
    }
}

struct HomeStatsView_Previews: PreviewProvider
{
    static var previews: some View
    {
        HomeStatsView(showPortfolio: .constant(false))
            .environmentObject(dev.homeVM)
    }
}
