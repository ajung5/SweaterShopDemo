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
    @Published var cart: [Product] = []
    // @Published private(set) var quantity: Int = 0
    
    func addToCart(product: Product) {
//        if var existingProduct = products.first(where: { $0.id == product.id }) {
//            existingProduct.quantity += 1
//            total += product.price
//        } else {
//            products.append(product)
//        }
//        total += product.price
        
//        if let existingProductIndex = products.firstIndex(where: { $0.id == product.id }) {
//                   products[existingProductIndex].quantity += 1
//               } else {
//                   products.append(product)
//               }
//
//               total += product.price
        
        if let index = products.firstIndex(where: { $0.name == product.name }) {
            products[index].quantity += 1
            products[index].price += product.price
        } else {
            products.append(product)
        }
        total += product.price

    }
    
    func removeFromCart(product: Product) {
        
        if let removeProduct = products.firstIndex(where: {$0.id == product.id}) {
                    products.remove(at: removeProduct)
                    total -= product.price
        }
    }
    
    func updateQuantity(for product: Product, newQuantity: Int) {
        if let index = cart.firstIndex(where: { $0.id == product.id }) {
            cart[index].quantity = newQuantity
        }
    }
}
