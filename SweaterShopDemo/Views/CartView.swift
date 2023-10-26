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
            Text("Your cart is empty")
        }
        .navigationTitle("My Cart")
        .padding(.top )
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
