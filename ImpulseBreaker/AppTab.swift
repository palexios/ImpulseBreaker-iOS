//
//  AppTab.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 06.01.2026.
//

import Foundation

// MARK: - AppTab
enum AppTab: CaseIterable, Identifiable {
    case history
    case add
    case profile
    var id: Self { self }
    var tabItem: TabItem {
        switch self {
        case .history:
            TabItem(title: "История", systemImageName: "clock")
        case .add:
            TabItem(title: "", systemImageName: "plus")
        case .profile:
            TabItem(title: "Профиль", systemImageName: "person")
        }
    }
}
