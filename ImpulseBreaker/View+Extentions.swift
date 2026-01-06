//
//  View+Extentions.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 06.01.2026.
//

import SwiftUI

extension View {
    func applyShadow() -> some View {
        self.shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 2)
    }
}
