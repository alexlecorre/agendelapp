//
//  LocationPickerView.swift
//  Agendelapp
//
//  Created by Alex le corre  on 10/03/2025.
//

import SwiftUI

struct LocationPickerView: View {
    @State private var selectedCity: String = "Paris"
    
    let cities = ["Paris", "Lyon", "Marseille", "Bordeaux", "Toulouse"]
    
    var body: some View {
        HStack {
            Image(systemName: "mappin.and.ellipse")
                .foregroundColor(.blue)
            
            Picker("Ville", selection: $selectedCity) {
                ForEach(cities, id: \.self) { city in
                    Text(city).tag(city)
                }
            }
            .pickerStyle(MenuPickerStyle()) // Affiche une liste déroulante
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(.horizontal)
    }
}

#Preview {
    LocationPickerView()
}
