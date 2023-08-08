//
//  CardManager.swift
//  SwiftUIE-commerceApp
//
//  Created by ipeerless on 07/08/2023.
//

import Foundation

class  CardManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        
        products.append(product)
        total += product.price
    }
    func removeFromCart(product: Product) {
        products = products.filter{$0.id != product.id}
        total -= product.price
        
    }
    
}
