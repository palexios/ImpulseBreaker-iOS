//
//  SegmentItem.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 11.01.2026.
//

import Foundation

// MARK: - SegmentSelection
enum SegmentItem<T: SegmentedItem>: Hashable {
    case all
    case value(T)
    
    var title: String {
        switch self {
        case .all:
            "Все"
        case .value(let item):
            item.title
        }
    }
}
