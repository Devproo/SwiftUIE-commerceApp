//
//  HomePageView.swift
//  SwiftUIE-commerceApp
//
//  Created by ipeerless on 08/08/2023.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cardManager: CardManager
    var body: some View {
        
        ZStack(alignment: .top) {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                AppBar()
                SearchView()
                ImageSliderView()
                HStack {
                    Text("New Rivals")
                        .font(.title2)
                        .fontWeight(.medium)
                    Spacer()
                    NavigationLink {
                        ProductsView()
                    } label: {
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundColor(.teal)
                    }

                }
                .padding()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach( productList, id: \.id) { product  in
                            NavigationLink{
                               ProductDetailsView(product: product)
                            } label: {
                                ProductCardView(product: product)
                                    .environmentObject(cardManager)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(CardManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cardManager: CardManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    Text("Shanghai, China")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CardView().environmentObject(cardManager)) {
                        CardButton(numberOfProducts: cardManager.products.count)
                        
                    }
                    
                    
                }
                Text("Find the most luxurious")
                    .font(.largeTitle.bold())
                Text("Furniture")
                    .font(.largeTitle.bold())
                    .foregroundColor(.teal)
            }
        }
        .padding()
        .environmentObject(CardManager())
    }
}
