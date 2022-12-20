//
//  ContentView.swift
//  My Recipes 3
//  Descripcion: Ejemplo en SwiftUI como podemos disenar
//               la view de la celda (RecipeView) en forma
//               separada de la content view.
//  Created by Angel Del Negro on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    var recipes = [RecipeModel]()
    
    var body: some View {
        VStack {
            List(recipes, id : \.id) { recipe in
                RecipeView(recipe: recipe)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipes: ContentPreviewHelper.mockRecipes())
    }
}
