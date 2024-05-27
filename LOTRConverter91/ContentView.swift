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
                
                //Currency Text
                
                //Currency Conversion
                HStack {
                    // Left Currency Section
                    VStack {
                        //Currency
                        HStack {
                            //CurrencyImage
                            
                            //Currency Text
                        }
                        
                        //TextField
                    }
                    
                    //Equal sign
                    
                    //Right Currency Section
                    VStack {
                        //Currency
                        HStack {
                            //Currency Text
                            
                            //CurrencyImage
                        }
                        
                        //TextField
                    }
                }
                
                //Info Button
            }
        }
    }
}

#Preview {
    ContentView()
}
