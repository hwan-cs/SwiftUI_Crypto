//
//  Color.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/07.
//

import Foundation
import SwiftUI

extension Color
{
    static let theme = ColorTheme()
}

struct ColorTheme
{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
