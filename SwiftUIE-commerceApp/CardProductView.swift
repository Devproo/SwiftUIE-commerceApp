//
//  CardProductView.swift
//  SwiftUIE-commerceApp
//
//  Created by ipeerless on 08/08/2023.
//

import SwiftUI

struct CardProductView: View {
    @EnvironmentObject var cardManager: CardManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(9)
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .bold()
                Text("$ \(product.price)")
                    .bold()
            }
            .padding()
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cardManager.removeFromCart(product: product)
                }
            
                
        }
        .padding(.horizontal)
        .background(.blue.opacity(0.25))
        .cornerRadius(12)
        .frame(width: .infinity, alignment: .leading)
        .padding()
    }
}

struct CardProductView_Previews: PreviewProvider {
    static var previews: some View {
        CardProductView( product: productList[0])
            .environmentObject(CardManager())
    }
}
