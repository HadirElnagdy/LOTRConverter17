//
//  CurrencyIcon.swift
//  LOTRConverter17
//
//  Created by Hadir on 19/05/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    
    let currency: Currency
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currency.image)
                .resizable()
                .scaledToFit()
            
            Text(currency.name)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currency:.copperPenny)
}
