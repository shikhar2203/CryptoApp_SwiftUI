//
//  TopMoversItemView.swift
//  CryptoApp_SwiftUI
//
//  Created by shikhar on 31/08/23.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading){
            
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .padding(.bottom, 8)
            
            HStack(spacing: 2){
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .fontWeight(.bold)
                    
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)

        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 1.5)
        }
        
    }
}

//
//#Preview {
//    TopMoversItemView()
//}
