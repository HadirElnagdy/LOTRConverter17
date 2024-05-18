//
//  ExchangeInfo.swift
//  LOTRConverter17
//
//  Created by Hadir on 18/05/2024.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(Color.brown)
            
            VStack{
                //Text -> largeTitle
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3) //spacing between letters
                
                //Text -> Paragraph
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                //image text image * 4
                ExchangeRate(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
                
                ExchangeRate(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
                
                ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
                
                ExchangeRate(leftImage: .silverpenny, text: "1 Silver Penny = 100 Copper Pennies", rightImage: .copperpenny)
                
                
                //Button
                Button("Done"){
                    
                }
                .buttonStyle(.borderedProminent)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .tint(.brown)
                .padding()
            }
        }.foregroundStyle(.black)
    }
}

#Preview {
    ExchangeInfo()
}


