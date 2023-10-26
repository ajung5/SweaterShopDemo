//
//  ContentView.swift
//  SweaterShopDemo
//
//  Created by Agung Nawawi on 26/10/23.
//

import SwiftUI

struct ContentView: View {
    
    // buat instance cartManager
    // @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.self) { item in
                        ProductCard(product: item)
                    }
                }
                .padding()
            }
            .navigationTitle("Sweater Shop")
            .toolbar {
                NavigationLink {
                    CartView()
                } label: {
                    CartButton(numberOfPrroducts: 1)
                }

            }
        }
    }
}

#Preview {
    ContentView()
}
