//
//  MovDetail.swift
//  Cart
//
//  Created by Вячеслав Квашнин on 11.03.2021.
//

import SwiftUI

struct MovDetail: View {
    @Environment(\.presentationMode) var presentation
    let mov: Mov
    let coreDM: CoreDataManager
    @State var movName = ""
    @Binding var need: Bool
    
    var body: some View {
        VStack {
            TextField(mov.title ?? "", text: $movName)
            Button(action: {
                if !movName.isEmpty {
                    mov.title = movName
                    coreDM.updateMov()
                    need.toggle()
                    presentation.wrappedValue.dismiss()
                }
            }) {
                Label(
                    title: { Text("ОБНОВИТЬ") },
                    icon: { Image(systemName: "") }
                )
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(15)
        }
    }
}
}

struct MovDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovDetail(mov: Mov(), coreDM: CoreDataManager(), need: .constant(false))
    }
}
