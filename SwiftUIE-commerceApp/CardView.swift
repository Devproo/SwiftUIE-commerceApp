//
//  CardView.swift
//  SwiftUIE-commerceApp
//
//  Created by ipeerless on 08/08/2023.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cardManager: CardManager
    
    var body: some View {
        ScrollView {
            if cardManager.products.count > 0 {
                ForEach(cardManager.products, id: \.id) { product in
                    ProductCardView(product: product)
                }
                HStack {
                    Text("Your Total is ")
                    Spacer()
                    Text("$\(cardManager.total).00")
                        .bold()
                }
                .padding()
                PaymentButton(action: {})
                    .padding()
            } else {
                Text("Your Card is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().environmentObject(CardManager())
    }
}
