//
//  ContentView.swift
//  Cart
//
//  Created by Вячеслав Квашнин on 23.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        CartView(coreDM: CoreDataManager(), mov: Mov())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
