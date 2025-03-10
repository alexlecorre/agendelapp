//
//  Event.swift
//  Agendelapp
//
//  Created by Alex le corre on 10/03/2025.
//

import SwiftUI

struct Event: Identifiable, Codable {
    var id: Int
    var Titre: String
    var Description: String
    var date: String
    var Prix: String
    var category: String
    var Ville: String
}

    // ✅ Structure pour décoder la réponse complète des événements depuis Strapi
    struct EventResponse: Codable {
        let data: [Event]
    }

// ✅ Exemple de données
let sampleEvents: [Event] = [
    Event(id: 1, Titre: "Tintin, l’aventure immersive", Description: "Une exposition immersive", date: "2025-03-10", Prix: "12", category: "Art numérique", Ville: "Paris"),
    Event(id: 2, Titre: "Munch", Description: "Exposition des œuvres d'Edvard Munch", date: "2025-03-12", Prix: "10", category: "Peinture", Ville: "Lyon")
]
