//
//  SegmentedItem.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 11.01.2026.
//

import Foundation

// MARK: - SegmentedItem
protocol SegmentedItem: Hashable {
    var title: String { get }
}
