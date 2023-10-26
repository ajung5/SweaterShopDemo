//
//  Product.swift
//  SweaterShopDemo
//
//  Created by Agung Nawawi on 26/10/23.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}
