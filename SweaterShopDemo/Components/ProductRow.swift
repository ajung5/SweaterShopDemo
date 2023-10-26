//
//  ProductRow.swift
//  SweaterShopDemo
//
//  Created by Agung Nawawi on 26/10/23.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 50, height: 100)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("Rp. \(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundStyle(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ProductRow(product: productList[2])
        .environmentObject(CartManager())
}
