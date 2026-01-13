//
//  PurchaseCategory.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 11.01.2026.
//

import Foundation

// MARK: - PurchaseCategory
enum PurchaseCategory: SegmentedItem {
    case electronics
    case clothing
    case food
    case home
    case other
    
    var title: String {
        switch self {
        case .electronics:
            "Электроника"
        case .clothing:
            "Одежда"
        case .food:
            "Еда"
        case .home:
            "Дом"
        case .other:
            "Другое"
        }
    }
}
