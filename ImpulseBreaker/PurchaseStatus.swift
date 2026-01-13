//
//  PurchaseStatus.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 11.01.2026.
//

import Foundation

// MARK: - PurchaseStatus
enum PurchaseStatus: SegmentedItem {
    case purchased
    case preliminary
    case canceled
    
    var title: String {
        switch self {
        case .purchased:
            "Куплено"
        case .preliminary:
            "Заморожено"
        case .canceled:
            "Отменено"
        }
    }
}
