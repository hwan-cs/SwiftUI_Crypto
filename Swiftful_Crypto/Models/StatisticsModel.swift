//
//  StatisticsModel.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/03/18.
//

import Foundation

struct StatisticsModel: Identifiable
{
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil)
    {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}

let newModel = StatisticsModel(title: "", value: "", percentageChange: nil)


