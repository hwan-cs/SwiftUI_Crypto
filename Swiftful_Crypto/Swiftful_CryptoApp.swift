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
    
    init()
    {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
    }
    
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
