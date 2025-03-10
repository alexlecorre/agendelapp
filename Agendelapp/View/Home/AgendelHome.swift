//
//  AgendelHome.swift
//  Agendelapp
//
//  Created by Alex le corre on 10/03/2025.
//

import SwiftUI

struct AgendelHome: View {
    
    @StateObject var sliderViewModel = SliderViewModel() // ✅ Initialisation du ViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView() // ✅ Header avec le logo et la barre de recherche
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        LocationPickerView() // ✅ Sélecteur de ville
                        CategorySliderView() // ✅ Slider des catégories

                        // ✅ Intégration du SliderView
                        ForEach(sliderViewModel.sliders) { slider in
                            SliderView(slider: slider)
                        }

                        Button(action: {
                            print("Voir toutes les sorties") // On pourra ajouter la navigation ici
                        }) {
                            Text("Toutes les sorties")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
                        EventSectionView(title: "Que faire ce soir ?", events: sampleEvents) // ✅ Section "Que faire ce soir ?"
                    }
                }
            }
            .onAppear {
                sliderViewModel.fetchSliders() // ✅ Charger les sliders au lancement
            }
        }
    }
}
#Preview {
    AgendelHome()
}
