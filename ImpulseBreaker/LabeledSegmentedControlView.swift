//
//  LabeledSegmentedControlView.swift
//  ImpulseBreaker
//
//  Created by Александр Павлицкий on 11.01.2026.
//

import SwiftUI

// MARK: - LabeledSegmentedControlView
struct LabeledSegmentedControlView<Item: SegmentedItem>: View {
    // MARK: Bindings
    @Binding private var selection: SegmentItem<Item>
    
    // MARK: Properties
    private let labelTitle: String
    private let items: [SegmentItem<Item>]
    
    
    // MARK: Init
    init(selection: Binding<SegmentItem<Item>>, labelTitle: String, items: [SegmentItem<Item>]) {
        self._selection = selection
        self.labelTitle = labelTitle
        self.items = items
    }
    
    // MARK: Body
    var body: some View {
        VStack(alignment: .leading) {
            DSTextSecondaryView(labelTitle)
            Picker("", selection: $selection) {
                ForEach(items, id: \.self) { item in
                    Text(item.title)
                }
            }
            .pickerStyle(.segmented)
        }
        
    }
}

#Preview {
    LabeledSegmentedControlView(selection: .constant(.all),
                                labelTitle: "Status",
                                items: [.all,
                                        .value(PurchaseStatus.purchased),
                                        .value(PurchaseStatus.preliminary),
                                        .value(PurchaseStatus.canceled)])
}
