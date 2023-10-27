//
//  CartView.swift
//  SweaterShopDemo
//
//  Created by Agung Nawawi on 26/10/23.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { items in
                    ProductRow(kuantitas: 1, product: items)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("Rp. \(cartManager.total)")
                        .bold()
                }
                .padding()
                
            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle("My Cart")
        .padding(.top )
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
