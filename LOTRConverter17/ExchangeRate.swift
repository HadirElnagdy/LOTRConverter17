//
//  ExchangeRate.swift
//  LOTRConverter17
//
//  Created by Hadir on 18/05/2024.
//

import SwiftUI

struct ExchangeRate: View {
    
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack{
            //Left image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //Text
            Text(text)
            
            //Right image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}
