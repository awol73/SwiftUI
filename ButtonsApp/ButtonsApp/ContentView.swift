//
//  ContentView.swift
//  ButtonsApp
//
//  Created by Angel Del Negro on 07/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                //Color.cyan.edgesIgnoringSafeArea(.all)
                NavigationLink(destination: ButtonView(), label: {
                     Text("Buttons")
                        .padding()
                })
                NavigationLink(destination: EditButtonView(), label: {
                    Text("Edit")
                        .padding()
                })
                
            }
            .navigationBarTitle(Text("Menu principal")
                                ,displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
