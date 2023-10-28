//
//  ProductRow.swift
//  SweaterShopDemo
//
//  Created by Agung Nawawi on 26/10/23.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    @State var kuantitas: Int
    var product: Product
    
    var body: some View {
        HStack(alignment: .top,spacing: 20) {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 50, height: 100)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                HStack {
                    Text("Rp. \(product.price)")
//                    Text("x")
//                    Text("\(product.quantity)")
                    Stepper(value: $kuantitas, in: 0...Int.max, step: 1) {
                        Text("x \(kuantitas)")
                    }
                }
                
//                .onChange(of: product.quantity) { _, newValue in
//                    cartManager.updateQuantity(for: product, newQuantity: newValue)
//                }
                
//                .onChange(of: kuantitas) {_, newValue in
//                    product.quantity = newValue
//                    cartManager.updateQuantity(for: product, newQuantity: newValue)
//                }
                
//                .onChange(of: kuantitas) {_, newValue in
//                    self.kuantitas = newValue
//                    self.cartManager.updateQuantity(for: product, newQuantity: newValue)
//                }
            }
            
            Image(systemName: "trash")
                .foregroundStyle(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        .onAppear {
            kuantitas = product.quantity
        }

    }
}

#Preview {
    ProductRow(kuantitas: 0, product: productList[2])
        .environmentObject(CartManager())
}
