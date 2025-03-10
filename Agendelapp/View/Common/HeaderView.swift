//
//  HeaderView.swift
//  Agendelapp
//
//  Created by Alex le corre  on 10/03/2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Text("AGENDEL")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            HStack {
                TextField("Rechercher...", text: .constant(""))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
                Button(action: {
                    print("Filtrer les résultats")
                }) {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .background(Color.blue)
    }
}

#Preview {
    HeaderView()
}
