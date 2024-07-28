//
//  SelectCurrencyView.swift
//  LOTRConverter91
//
//  Created by Ramesh Shanmugam on 09/07/24.
//

import SwiftUI

struct SelectCurrencyView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            // Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency Icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIconView(currencyImage: currency.image, currencyName: currency.name)
                    }
                }
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                // Currency Icons
                CurrencyIconView(currencyImage: .copperpenny, currencyName: "Copper Penny")
                
                //Done Button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .foregroundStyle(.white)
                .font(.largeTitle)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrencyView()
}
