//
//  Double.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/26.
//

import Foundation

extension Double
{
    // Option click on currencyFormatter to see documentation
    /// Converts Double into a currency with 2-6 decimal places
    /// ```
    /// Convert 1234.56 to ₩1,234.56
    /// ```
    private var currencyFormatter: NumberFormatter
    {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.currencyCode = "krw"
        formatter.currencySymbol = "₩"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// Converts Double into a currency as a string with 2-6 decimal places
    /// ```
    /// Convert 1234.56 to "₩1,234.56"
    /// ```
    func asCurrencyWith6Decimals() -> String
    {
        let number = NSNumber(value: self)
        return currencyFormatter.string(from: number) ?? "₩0.00"
    }
    
    
    /// Converts Double into string representation
    /// ```
    /// Convert 1234.56 to "1234.56"
    /// ```
    func asNumberString() -> String
    {
        return String(format: "%.2f", self)
    }
    
    /// Converts Double into precent string
    /// ```
    /// Convert 1234.56 to "1234.56%"
    /// ```
    func asPercentString() -> String
    {
        return asNumberString() + "%"
    }
}
