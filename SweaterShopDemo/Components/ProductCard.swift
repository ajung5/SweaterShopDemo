//
//  ProductCard.swift
//  SweaterShopDemo
//
//  Created by Agung Nawawi on 26/10/23.
//

import SwiftUI

struct ProductCard: View {
    
    var product: Product
    
    var body: some View {
        // MARK: Parent ZStack
        ZStack(alignment: .topTrailing) {
            
            // MARK: Card
            ZStack(alignment: .bottom) {
                Image(product.imageName)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("Rp. \(product.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button(action: {
                print("Add to Cart")
            }, label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundStyle(.white)
                    .background(.black)
                    .clipShape(Circle())
                    .padding()
            })
        }
    }
}

#Preview {
    ProductCard(product: productList[0])
}
