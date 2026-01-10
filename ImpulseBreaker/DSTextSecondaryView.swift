//
//  DSTextSecondaryView.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 11.01.2026.
//

import SwiftUI

// MARK: - DSTextSecondaryView
struct DSTextSecondaryView: View {
    // MARK: Properties
    private let text: String
    
    // MARK: Init
    init(_ text: String) {
        self.text = text
    }
    
    // MARK: Body
    var body: some View {
        Text(text)
            .font(DSFont.secondary)
            .foregroundStyle(DSColor.Text.secondary)
    }
}


#Preview {
    DSTextSecondaryView("Status")
}
