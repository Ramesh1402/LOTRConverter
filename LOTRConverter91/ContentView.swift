//
//  ContentView.swift
//  LOTRConverter91
//
//  Created by Ramesh Shanmugam on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            
            VStack {
                //Pony Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                //Currency Exchange Text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //Currency Conversion
                HStack {
                    // Left Currency Section
                    VStack {
                        //Currency
                        HStack {
                            //CurrencyImage
                            Image(.silverpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //Currency Text
                            Text("Silver Penny")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        //TextField
                        Text("Text Field")
                    }
                    
                    //Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    //Right Currency Section
                    VStack {
                        //Currency
                        HStack {
                            //Currency Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //CurrencyImage
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        //TextField
                        Text("Text Field")
                    }
                }
                
                Spacer()
                
                //Info Button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
