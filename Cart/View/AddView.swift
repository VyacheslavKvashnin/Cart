//
//  AddView.swift
//  Cart
//
//  Created by Вячеслав Квашнин on 11.03.2021.
//

import SwiftUI

struct AddView: View {
    
    @State var enterData = ""
    @State var movi: [Mov] = [Mov]()
    @State var need: Bool = false
    let coreDM: CoreDataManager
    let mov: Mov
    
    func populateMovies() {
        movi = coreDM.getAllMov()
    }
    
    var body: some View {
        VStack {
        TextField("Enter data", text: $enterData)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            Button(action: {
                coreDM.saveMov(title: enterData)
                populateMovies()
            }, label: {
            Text("Button")
        })
            List {
                ForEach(movi, id: \.self) { mov in
                    NavigationLink(
                        destination: MovDetail(mov: mov, coreDM: coreDM, need: $need),
                        label: {
                            Text(mov.title ?? "")
                        })
                    
                }
            }
            .accentColor(need ? .white : .black)
        }
        .onAppear(perform: {
            populateMovies()
        })
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(coreDM: CoreDataManager(), mov: Mov())
    }
}
