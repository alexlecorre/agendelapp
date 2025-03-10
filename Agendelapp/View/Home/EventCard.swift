//
//  EventCard.swift
//  Agendelapp
//
//  Created by Alex le corre on 10/03/2025.
//

import SwiftUI

struct EventCard: View {
    let event: AppModels.Event

    var body: some View {
        VStack {
            Text(event.Titre)
                .font(.headline)
                .foregroundColor(.black)
            Text(event.category)
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("📍 \(event.Ville)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

#Preview {
    EventCard(event: sampleEvents[0])
}
