//
//  CoinRowView.swift
//  CryptoApp_SwiftUI
//
//  Created by shikhar on 31/08/23.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    
    let coin: Coin
    
    var body: some View {
        
        HStack{
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
            
            VStack(alignment: .leading, spacing: 4){
                
                Text("\(coin.name)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                    
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .padding(.leading,6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4){
                
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                    
                Text(coin.priceChangePercentage24H.toPercent())
                    .font(.caption)
                    .padding(.leading,6)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            .padding(.leading, 2)

            
        }.padding(.horizontal)
            .padding(.vertical, 4)
        
    }
}

//#Preview {
//    CoinRowView()
//}
