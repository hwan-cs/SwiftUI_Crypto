//
//  Swiftful_CryptoApp.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/07.
//

import SwiftUI

@main
struct Swiftful_CryptoApp: App
{
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some Scene
    {
        WindowGroup
        {
            NavigationView
            {
                HomeView()
                    .toolbar(.hidden, for: .automatic)
            }
            .environmentObject(viewModel)
        }
    }
}
