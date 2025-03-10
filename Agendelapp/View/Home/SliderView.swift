//
//  SliderView.swift
//  Agendelapp
//
//  Created by Alex le corre on 10/03/2025.
//

import SwiftUI
import Foundation

// ✅ Ajoute ceci pour bien importer Slider et Event
import Agendelapp

struct SliderView: View {
    let slider: Slider
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(slider.nouvelles_sorties)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(slider.evenements) { event in
                        EventCard(event: event)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
