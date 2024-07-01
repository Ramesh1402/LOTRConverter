//
//  ContentView.swift
//  LOTRConverter91
//
//  Created by Ramesh Shanmugam on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
                        .padding(.bottom, -5)
                        
                        //TextField
                        TextField("Amount",
                                  text: $leftAmount)
                        .textFieldStyle(.roundedBorder)
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
                        .padding(.bottom, -5)
                        
                        //TextField
                        TextField("Amount",
                                  text: $rightAmount)
                        .textFieldStyle(.roundedBorder)

                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                //Info Button
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
            }
        }
        .sheet(isPresented: $showExchangeInfo) {
            ExchangeInfoView()
                .onAppear {
                    setWindowBackgroundColor(.black)
                }
                .onDisappear() {
                    setWindowBackgroundColor(.white)
                }
        }

    }
    
    private func setWindowBackgroundColor(_ color: UIColor) {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
            let window = windowScene.windows.first
        {
            window.backgroundColor = color
        }
    }
}



#Preview {
    ContentView()
}
