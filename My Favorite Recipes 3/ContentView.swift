//
//  ContentView.swift
//  My Favorites Recipes 3 - Se le aplican los cambios
//  que propone en autor. Se creo el 3 para poder guardar
//  como ejemplo la primera version.
//
//  Created by Angel Del Negro on 19/12/2022.
//
//  Packt -  Learn SwiftUI
//  Author - Chris Barker
//

import SwiftUI

struct ContentView: View {
    
    //var recipes = [RecipeModel]()
    
    #if DEBUG
    var recipes = ContentPreviewHelper.mockRecipes()
    #else
    var recipes = [RecipeModel]()
    #endif
    
    var body: some View {
        Group {
            VStack(alignment: .leading) {
                List(recipes, id: \.self) { recipe in
                    RecipeView(recipe: recipe)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipes: ContentPreviewHelper.mockRecipes())
    }
}

struct ContentPreviewHelper {
    static func mockRecipes() -> [RecipeModel] {
        var recipes = [RecipeModel]()
        
        recipes.append(RecipeModel(id: UUID()
                        , name: "Italian Pizza Chicken"
                        , origin: "Italian"
                        , countryCode: "IT")
        )
        
        recipes.append(RecipeModel(id: UUID()
                        , name: "Hamburguesa"
                        , origin: "United States"
                        , countryCode: "US")
        )
        
        recipes.append(RecipeModel(id: UUID()
                        , name: "Asado"
                        , origin: "Argentina"
                        , countryCode: "ES")
        )
        
        return recipes
    }
}
