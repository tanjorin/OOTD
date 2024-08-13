//
//  LockerItem.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

enum ItemCategory: String, CaseIterable {
    case hats = "Hats"
    case tShirt = "T-Shirts"
    case jackets = "Jackets"
    case pants = "Pants"
    case shorts = "Shorts"
    case shoes = "Shoes"
    case jewelry = "Jewelry"
    case bags = "Bags"
    case belts = "Belts"
    // Add other categories as needed
}

struct LockerItem: Identifiable {
    var id = UUID()
    var name: String
    var category: ItemCategory
    var image: UIImage
    // Add other attributes as needed
}
