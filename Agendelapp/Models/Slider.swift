//
//  Slider.swift
//  Agendelapp
//
//  Created by Alex le corre on 10/03/2025.
//

import Foundation

extension AppModels {
    
    // ✅ Modèle correspondant aux sliders dans Strapi
    struct Slider: Codable, Identifiable {
        let id: Int
        let nouvelles_sorties: String
        let type_de_slider: String
        let evenements: [Event] // Utilise la structure Event définie dans AppModels
    }

    // ✅ Structure pour décoder la réponse complète des sliders depuis Strapi
    struct SliderResponse: Codable {
        let data: [Slider]
    }
}
