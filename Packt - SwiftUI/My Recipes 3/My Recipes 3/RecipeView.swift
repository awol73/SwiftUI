//
//  RecipeView.swift
//  My Recipes 3
//
//  Created by Angel Del Negro on 19/12/2022.
//

import SwiftUI

struct RecipeView: View {
    
    var recipe: RecipeModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(recipe.name)")
                .font(.headline)
                .foregroundColor(Color.blue)
                .bold()
            Text("\(recipe.origin)")
                .font(.subheadline)
                .foregroundColor(Color.purple)
                .italic()
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: RecipeModel(id: UUID(), name: "Pizza", origin: "Italy"))
    }
}
