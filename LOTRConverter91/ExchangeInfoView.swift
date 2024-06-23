//
//  ExchangeInfoView.swift
//  LOTRConverter91
//
//  Created by Ramesh Shanmugam on 08/06/24.
//

import SwiftUI

struct ExchangeInfoView: View {
    var body: some View {
        ZStack {
            //Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //Title
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                //Description
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                //Exchange rate view
                ExchangeRateView(leftImage: .goldpiece,
                                 text: "1 Gold Piece = 4 Gold Pennies",
                                 rightImage: .goldpenny)
                
                ExchangeRateView(leftImage: .goldpenny,
                                 text: "1 Gold Penny = 4 Silver Piecies",
                                 rightImage: .silverpiece)
                
                ExchangeRateView(leftImage: .silverpiece,
                                 text: "1 Silver Piece = 4 Silver Pennies",
                                 rightImage: .silverpenny)
                
                ExchangeRateView(leftImage: .silverpenny,
                                 text: "1 Silver Penny = 100 Copper Pennies",
                                 rightImage: .copperpenny)
                
                
                //Done Button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .foregroundStyle(.white)
                .font(.largeTitle)
                .padding()
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfoView()
}

