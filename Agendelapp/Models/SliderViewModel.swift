//
//  SliderViewModel.swift
//  Agendelapp
//
//  Created by Alex le corre on 10/03/2025.
//

import SwiftUI

// ✅ ViewModel pour gérer la récupération des sliders depuis Strapi
class SliderViewModel: ObservableObject {
    @Published var sliders: [AppModels.Slider] = []

    func fetchSliders() {
        guard let url = URL(string: "http://localhost:1337/api/sliders?populate=evenements") else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(AppModels.SliderResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.sliders = decodedResponse.data
                    }
                } catch {
                    print("Erreur de décodage : \(error)")
                }
            }
        }.resume()
    }
}
