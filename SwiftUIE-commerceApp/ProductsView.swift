//
//  ProductsView.swift
//  SwiftUIE-commerceApp
//
//  Created by ipeerless on 08/08/2023.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cardManager: CardManager
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("All Furniture"))
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .environmentObject(CardManager())
    }
}
