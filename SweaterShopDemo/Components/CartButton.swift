//
//  CartButton.swift
//  SweaterShopDemo
//
//  Created by Agung Nawawi on 26/10/23.
//

import SwiftUI

struct CartButton: View {
    
    var numberOfPrroducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing)  {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfPrroducts > 0 {
                Text("\(numberOfPrroducts)")
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.white)
                    .frame(width: 15, height: 15)
                    .background(Color.red)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    CartButton(numberOfPrroducts: 3)
}
