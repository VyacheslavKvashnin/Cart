//
//  CartViewModel.swift
//  Cart
//
//  Created by Вячеслав Квашнин on 23.02.2021.
//

import SwiftUI

class CartViewModel: ObservableObject {
    
    @Published var items = [
        Item(name: "Popo-1 in the room a big", details: "popo-1", image: "images-1", price: 21.00, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Popo-2", details: "popo-2", image: "images-2", price: 22.00, quantity: 2, offset: 0, isSwiped: false),
        Item(name: "Popo-3", details: "popo-3", image: "images-3", price: 23.00, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Popo-4", details: "popo-4", image: "images-4", price: 24.00, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Popo-5", details: "popo-5", image: "images-5", price: 25.00, quantity: 1, offset: 0, isSwiped: false)
    ]
}
