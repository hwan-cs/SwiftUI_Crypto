//
//  UIApplication.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/27.
//

import Foundation
import UIKit

extension UIApplication
{
    func endEditing()
    {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
