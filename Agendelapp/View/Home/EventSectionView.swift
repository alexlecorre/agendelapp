//
//  EventSectionView.swift
//  Agendelapp
//
//  Created by Alex le corre  on 10/03/2025.
//

import SwiftUI
import Foundation

// ✅ Ajoute ceci si `Event` est défini dans un autre fichier
import Agendelapp

struct EventSectionView: View {
    var title: String
    var events: [Event]

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(events) { event in
                        EventCard(event: event)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    EventSectionView(title: "Nouvelles sorties", events: sampleEvents)
}
