//
//  ContentView.swift
//  ListRowAdd
//
//  Created by Angel Del Negro on 20/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var numbers = [1, 2, 3, 4]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.numbers, id:\.self) {
                    number in
                        Text("\(number)")
                }
            }
            .navigationBarTitle("Lista Numerada", displayMode: .inline)
            .navigationBarItems(trailing: Button("Add", action: addItemRow))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
