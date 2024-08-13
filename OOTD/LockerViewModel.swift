//
//  LockerViewModel.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

class LockerViewModel: ObservableObject {
    @Published var items: [LockerItem] = []

    func addItem(_ item: LockerItem) {
        items.append(item)
    }

    func items(for category: ItemCategory) -> [LockerItem] {
        return items.filter { $0.category == category }
    }
}
