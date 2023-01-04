//
//  RecipeView.swift
//  My Favorite Recipes 3
//
//  Created by Angel Del Negro on 19/12/2022.
//

import SwiftUI

struct RecipeView : View {
    
//    Sino declaro la variable recipe como state no la puedo mutar
//    cuando hacemos self.recipe.favourite.toggle() --> Toogle lo que
//    hace es que si esta en true la pasa a false y biceversa.
//
    @State var recipe: RecipeModel
    
    var body : some View {
        Group {
            VStack(alignment: .leading) {
                Text("\(recipe.name)")
                    .font(.headline)
                    .foregroundColor(Color.blue)
                    .bold()
                Image(recipe.countryCode)
//                Text("\(recipe.origin)")
//                    .font(.subheadline)
//                    .foregroundColor(Color.purple)
//                    .italic()
            }
            VStack(alignment: .trailing, spacing: 10) {
                Button(action: {
                    self.recipe.favourite.toggle()
                }){
                    Image(systemName: self.recipe.favourite ? "star.fill" : "star")
                }
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .trailing)
            
        }
    }
}


struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            RecipeView(recipe: RecipeModel(id: UUID(), name: "Salmon", origin: "Norway", countryCode: "ES"))
        }
    }
}

