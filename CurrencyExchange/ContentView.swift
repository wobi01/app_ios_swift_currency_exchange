//
//  ContentView.swift
//  CurrencyExchange
//
//  Created by Wobi on 10/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var test = CurrencyConverter()
    
    @State var topAmount = ""
    @State var bottomAmount = ""
    
    @State var currency: Currency
    
    @FocusState var topTyping
    @FocusState var bottomTyping
    
    @State var topCurrency = "Top Currency"
    @State var bottomCurrency = "Bottom Currency"
    
    var body: some View {
        ZStack{
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                Text("Currency calculator")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .fontDesign(.serif)
                Spacer()
                VStack{
                    HStack{
                        Menu(topCurrency){
                            Picker(selection: $topCurrency, label: Text("Test")){
                                ForEach(Currency.allCases){ currency in
                                    Text(Currency.nameWithFlag(for: currency)).tag(Currency.nameWithFlag(for: currency))
                                }
                            }
                        }
                        .font(.title)
                        .foregroundStyle(.black)
                        .textFieldStyle(.roundedBorder)
                        TextField("Amount", text: $topAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.decimalPad)
                        
                    }
                    
                    Image(systemName: "arrow.up.and.down.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 60)
                        .foregroundStyle(.primary)
                        .symbolEffect(.pulse)
                    HStack{
                        Menu(bottomCurrency){
                            Picker(selection: $bottomCurrency, label: Text("Test")){
                                ForEach(Currency.allCases){ currency in
                                    Text(Currency.nameWithFlag(for: currency)).tag(Currency.nameWithFlag(for: currency))
                                }
                            }
                        }
                        .font(.title)
                        .foregroundStyle(.black)
                        .textFieldStyle(.roundedBorder)
                        TextField("Amount", text: $bottomAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.decimalPad)
                    }
                    
                }
                .padding()
                .background(.gray.opacity(0.5))
                Spacer()
                    .onChange(of: topAmount){
                        var amountToConvert = Double(topAmount)
                    
            }
            
        }
    }
}

#Preview {
    ContentView(currency: .PLN)
}
