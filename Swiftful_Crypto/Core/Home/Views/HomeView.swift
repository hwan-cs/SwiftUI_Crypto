//
//  HomeView.swift
//  Swiftful_Crypto
//
//  Created by Jung Hwan Park on 2023/02/07.
//

import SwiftUI

struct HomeView: View
{
    @EnvironmentObject private var vm: HomeViewModel
    @State private var showPortfolio: Bool = false // animate right
    @State private var showPorfolioView: Bool = false // new sheet
    
    var body: some View
    {
        ZStack
        {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
                .sheet(isPresented: $showPorfolioView) {
                    PortfolioView()
                        .environmentObject(vm)
                }
            
            // content layer
            VStack
            {
                homeHeader
                HomeStatsView(showPortfolio: $showPortfolio)
                SearchBarView(searchText: $vm.searchText)
                
                columnTitles
                
                if !showPortfolio
                {
                    allCoinsList
                        .transition(.move(edge: .leading))
                }
                
                if showPortfolio
                {
                    portfolioCoinsList
                        .transition(.move(edge: .trailing))
                }
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider
{
    static var previews: some View
    {
        NavigationView
        {
            HomeView()
                .toolbar(.hidden, for: .automatic)
        }
        .environmentObject(dev.homeVM)
    }
}

extension HomeView
{
    private var homeHeader: some View
    {
        HStack
        {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .onTapGesture
                {
                    if showPortfolio
                    {
                        showPorfolioView.toggle()
                    }
                }
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture
                {
                    withAnimation(.spring())
                    {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
    
    private var allCoinsList: some View
    {
        List
        {
            ForEach(vm.allCoins)
            { coin in
                CoinRowView(coin: coin, showHoldingsColumn: false)
                    .listRowInsets(.init(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10)))
            }
        }
        .listStyle(.plain)
    }
    
    private var portfolioCoinsList: some View
    {
        List
        {
            ForEach(vm.portfolioCoins)
            { coin in
                CoinRowView(coin: coin, showHoldingsColumn: true)
                    .listRowInsets(.init(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10)))
            }
        }
        .listStyle(.plain)
    }
    
    private var columnTitles: some View
    {
        HStack
        {
            Text("Coin")
            Spacer()
            if showPortfolio
            {
                Text("Holdings")
            }
            Text("Price")
                .frame(width: UIScreen.main.bounds.width / 3.5,  alignment: .trailing)
        }
        .font(.caption)
        .foregroundColor(Color.theme.secondaryText)
        .padding(.horizontal)
    }
}
