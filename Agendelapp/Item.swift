//
//  Item.swift
//  Agendelapp
//
//  Created by Alex le corre  on 10/03/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
