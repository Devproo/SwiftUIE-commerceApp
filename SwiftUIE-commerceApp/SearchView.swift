//
//  SearchView.swift
//  SwiftUIE-commerceApp
//
//  Created by ipeerless on 07/08/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search For furniture", text: $search)
            }
            .background(Color.blue.opacity(0.25))
            .cornerRadius(12)
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue.opacity(0.25))
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
