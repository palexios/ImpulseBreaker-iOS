//
//  PurchaseSort.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 11.01.2026.
//

import Foundation

// MARK: - PurchaseSort
enum PurchaseSort: SegmentedItem {
    case date
    case price
    case category
    
    var title: String {
        switch self {
        case .date:
            "Дате"
        case .price:
            "Цене"
        case .category:
            "Категории"
        }
    }
}
