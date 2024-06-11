//
//  CurrencyIcon.swift
//  CurrencyExchange
//
//  Created by Wobi on 12/05/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: String
    let currencyName: String
    
    var body: some View {
        VStack{
            //Currency image
            Text(currencyImage)
                .scaledToFit()

            //Currency name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.purple.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.purple)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: "🇵🇱", currencyName: "PLN")
}
