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
    var imageName: String
    var price: Int
}

var productList: [Product] = [
    Product(name: "Oversized Sweater", imageName: "sweater1", price: 150000),
    Product(name: "Cable Knit Sweater", imageName: "sweater2", price: 75000),
    Product(name: "Crewneck Sweater", imageName: "sweater3", price: 125000),
    Product(name: "V-Neck Sweater", imageName: "sweater4", price: 130000),
    Product(name: "Turtleneck Sweater", imageName: "sweater5", price: 89000),
    Product(name: "Hoodie Sweater", imageName: "sweater6", price: 99000),
    Product(name: "Cardigan Sweater", imageName: "sweater7", price: 73500),
    Product(name: "Cashmere Sweater", imageName: "sweater8", price: 220000)
]
