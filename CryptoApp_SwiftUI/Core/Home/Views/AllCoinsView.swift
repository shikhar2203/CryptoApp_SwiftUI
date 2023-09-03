//
//  AllCoinsView.swift
//  CryptoApp_SwiftUI
//
//  Created by shikhar on 31/08/23.
//

import SwiftUI

struct AllCoinsView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                
                Text("Coin")
                
                Spacer()
                
                Text("Prices")
                
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                        Divider()
                    }
                }
            }
        }
    }
}

#Preview {
    AllCoinsView()
}
