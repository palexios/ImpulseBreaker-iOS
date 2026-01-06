//
//  AppTabBarView.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 06.01.2026.
//

import SwiftUI

// MARK: - AppTabBarView
struct AppTabBarView: View {
    @Binding private var selection: AppTab
    
    // MARK: - Init
    init(selection: Binding<AppTab>) {
        self._selection = selection
    }
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            HStack {
                ForEach(AppTab.allCases, id: \.id) { tab in
                    VStack {
                        Button {
                            selection = tab
                        } label: {
                            tabView(for: tab)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                }
            }
            .overlay {
                Button {
                    selection = .add
                } label: {
                    addButtonView
                        .frame(height: DSLayout.AppTabBarView.circleHeight)
                        .offset(y: DSLayout.AppTabBarView.circleOffsetY)
                }
            }
        }
        .frame(height: DSLayout.AppTabBarView.height)
        .frame(maxWidth: .infinity)
        .background(.ultraThinMaterial)
    }
    
    // MARK: - Subviews
    var addButtonView: some View {
        Circle()
            .fill(DSColor.primary)
            .applyShadow()
            .overlay {
                Image(systemName: AppTab.add.tabItem.systemImageName)
                    .resizable()
                    .frame(width: DSLayout.AppTabBarView.iconWidth, height: DSLayout.AppTabBarView.iconHeight)
                    .fontWeight(DSFont.Weight.tabIcon)
                    .foregroundStyle(DSColor.backgroundPrimary)
            }
    }
    
    @ViewBuilder
    func tabView(for tab: AppTab) -> some View {
        if tab != .add {
            VStack(spacing: DSSpacing.medium) {
                Image(systemName: selection == tab ? tab.tabItem.selectedSystemImageName : tab.tabItem.systemImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: DSLayout.AppTabBarView.iconWidth, height: DSLayout.AppTabBarView.iconHeight)
                Text(tab.tabItem.title)
                    .font(DSFont.tabTitle)
            }
            .foregroundStyle(selection == tab ? DSColor.primary : DSColor.textSecondary)
        }
    }
}


#Preview {
    AppTabBarView(selection: .constant(.profile))
}
