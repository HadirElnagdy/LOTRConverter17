//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Hadir on 19/05/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var selectedCurrency: Currency
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                //Text
                Text("Select the currency you are starting with:")
                    .bold()
                    
                //Grid
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]){
                    ForEach(Currency.allCases){ currency in 
                        if selectedCurrency == currency {
                            CurrencyIcon(currency: currency)
                                .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .stroke(lineWidth: 3)
                                        .opacity(0.5)
                                }
                        }else{
                            CurrencyIcon(currency: currency)
                                .onTapGesture {
                                    selectedCurrency = currency
                                }
                        }
                        
                    }
                }
                
                
                //Text
                Text("Select the currency you want to convert to:")
                    .bold()
                
                //Grid
                
                
                
                //Button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .tint(.brown)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(selectedCurrency: .copperPenny)
}
