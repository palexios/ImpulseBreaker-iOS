//
//  TabItem.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 06.01.2026.
//

import Foundation

// MARK: - TabItem
struct TabItem {
    let title: String
    let systemImageName: String
    
    var selectedSystemImageName: String {
        systemImageName + ".fill"
    }
}
