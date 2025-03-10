//
//  CategorySliderView.swift
//  Agendelapp
//
//  Created by Alex le corre  on 10/03/2025.
//

import SwiftUI

struct CategorySliderView: View {
    let categories = [
        ("Exposition / Musée", "museum"),
        ("Théâtre", "theatermasks"),
        ("Concert", "music.note"),
        ("Cinéma", "film")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(categories, id: \.0) { category in
                    VStack {
                        Image(systemName: category.1)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        Text(category.0)
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    CategorySliderView()
}
