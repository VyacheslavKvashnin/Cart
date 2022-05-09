//
//  Item.swift
//  Cart
//
//  Created by Вячеслав Квашнин on 23.02.2021.
//

import SwiftUI

struct Item: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var details: String
    var image: String
    var price: Float
    var quantity: Int
    var offset: CGFloat
    var isSwiped: Bool
}
