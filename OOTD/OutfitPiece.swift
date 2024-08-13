//
//  OutfitPiece.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

struct OutfitPiece: Identifiable {
    var id = UUID()
    var category: String // e.g., "Hat", "Beanie", "Cap", "Shoe", "Trousers", "Skirt", "Shirt"
    var image: UIImage
}
