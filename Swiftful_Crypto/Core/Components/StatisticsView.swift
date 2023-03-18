//
//  StatisticsView.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/03/18.
//

import SwiftUI

struct StatisticsView: View
{
    
    let stats: StatisticsModel
    
    var body: some View
    {
        VStack(alignment: .leading, spacing: 4)
        {
            Text(stats.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            Text(stats.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            HStack
            {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(Angle(degrees: (stats.percentageChange ?? 0) >= 0 ? 0: 180))
                Text(stats.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                .bold()
            }
            .foregroundColor((stats.percentageChange ?? 0) >= 0 ? Color.theme.green: Color.theme.red)
            .opacity(stats.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

struct StatisticsView_Previews: PreviewProvider
{
    static var previews: some View
    {
        Group
        {
            StatisticsView(stats: dev.stat1)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            StatisticsView(stats: dev.stat2)
                .previewLayout(.sizeThatFits)
            StatisticsView(stats: dev.stat3)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
