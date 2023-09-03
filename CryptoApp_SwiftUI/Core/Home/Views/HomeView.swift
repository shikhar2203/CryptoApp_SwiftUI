//
//  HomeView.swift
//  CryptoApp_SwiftUI
//
//  Created by shikhar on 30/08/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // top movers
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // all coins 
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
