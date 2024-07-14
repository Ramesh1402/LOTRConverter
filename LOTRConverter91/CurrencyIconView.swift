//
//  CurrencyIconView.swift
//  LOTRConverter91
//
//  Created by Ramesh Shanmugam on 14/07/24.
//

import SwiftUI

struct CurrencyIconView: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // Currency Image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            //Currency Name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIconView(currencyImage: .goldpiece, currencyName: "Gold Piece")
}
