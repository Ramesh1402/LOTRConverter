//
//  ExchangeRateView.swift
//  LOTRConverter91
//
//  Created by Ramesh Shanmugam on 23/06/24.
//

import SwiftUI

struct ExchangeRateView: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            //Left Currency
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            
            //Exchange Rate
            Text(text)
            
            //Right Currency
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRateView(leftImage: .silverpiece,
                     text: "1 Silver Piece = 4 Silver Pennies",
                     rightImage: .silverpenny)
}
