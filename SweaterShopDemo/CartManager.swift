//
//  CartManager.swift
//  SweaterShopDemo
//
//  Created by Agung Nawawi on 26/10/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
//        products = products.filter { $0.id != product.id}
//        total -= product.price
//        
//        
        
        if let removeProduct = products.firstIndex(where: {$0.id == product.id}) {
                    products.remove(at: removeProduct)
                    total -= product.price
                }
    }
}
