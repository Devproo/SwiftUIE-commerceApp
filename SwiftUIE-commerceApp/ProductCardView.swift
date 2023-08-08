//
//  ProductCardView.swift
//  SwiftUIE-commerceApp
//
//  Created by ipeerless on 07/08/2023.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cardManager: CardManager
    var product: Product
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.25)
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading) {
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .cornerRadius(12)
                    Text(product.name)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical, 0.5)
                    Text("$\(product.price)")
                        .foregroundColor(.black)
                        .bold()
                }
                Button {} label: {
                    Image(systemName: "plus.circle.fill")
                        .padding()
                        .foregroundColor(.black)
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                    
                }
                
            }
        }
        .frame(width: 145, height: 260)
        .cornerRadius(16)
    
    }
    
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productList[0])
            .environmentObject(CardManager())
    }
}
