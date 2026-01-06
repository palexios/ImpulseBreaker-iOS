//
//  AppTabBarViewLayout.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 06.01.2026.
//

import Foundation

extension DSLayout {
    enum AppTabBarView {
        static let height: CGFloat = 49
        static let circleHeight: CGFloat = 55
        
        static let iconHeight: CGFloat = 18
        static let iconWidth = iconHeight
        
        static var circleOffsetY: CGFloat {
            -(circleHeight - height)
        }
    }
}
