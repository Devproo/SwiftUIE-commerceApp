//
//  Product.swift
//  SwiftUIE-commerceApp
//
//  Created by ipeerless on 07/08/2023.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(name: "Product 1", image: "image1.jpg", description: "Description 1", supplier: "Supplier 1", price: 100, width: "10cm", height: "15cm", diameter: "5cm"),
    Product(name: "Product 2", image: "image2.jpg", description: "Description 2", supplier: "Supplier 2", price: 200, width: "12cm", height: "18cm", diameter: "6cm"),
    Product(name: "Product 3", image: "image3.jpg", description: "Description 3", supplier: "Supplier 3", price: 150, width: "8cm", height: "10cm", diameter: "4cm"),
    Product(name: "Product 4", image: "image4.jpg", description: "Description 4", supplier: "Supplier 4", price: 180, width: "9cm", height: "12cm", diameter: "5.5cm"),
    Product(name: "Product 5", image: "image5.jpg", description: "Description 5", supplier: "Supplier 5", price: 120, width: "11cm", height: "14cm", diameter: "4.8cm"),
    Product(name: "Product 6", image: "image6.jpg", description: "Description 6", supplier: "Supplier 6", price: 250, width: "15cm", height: "20cm", diameter: "7cm"),
    Product(name: "Product 7", image: "image7.jpg", description: "Description 7", supplier: "Supplier 7", price: 300, width: "14cm", height: "16cm", diameter: "6.5cm"),
    Product(name: "Product 8", image: "image8.jpg", description: "Description 8", supplier: "Supplier 8", price: 90, width: "7cm", height: "9cm", diameter: "3.5cm"),
    Product(name: "Product 9", image: "image9.jpg", description: "Description 9", supplier: "Supplier 9", price: 170, width: "10.5cm", height: "13cm", diameter: "5cm"),
    Product(name: "Product 10", image: "image10.jpg", description: "Description 10", supplier: "Supplier 10", price: 220, width: "13cm", height: "17cm", diameter: "6.2cm"),
    // ... add more instances if needed
]
