//
//  ContentPreviewHelper.swift
//  My Recipes 3
//
//  Created by Angel Del Negro on 19/12/2022.
//

import Foundation

struct ContentPreviewHelper {
    
    static func mockRecipes () -> [RecipeModel] {
        
        var recipes = [RecipeModel]()
        
        recipes.append(RecipeModel(id: UUID(), name: "Pasta", origin: "Italy"))
        recipes.append(RecipeModel(id: UUID(), name: "Pizza", origin: "Italy"))
        recipes.append(RecipeModel(id: UUID(), name: "Asado", origin: "Argentine"))
        recipes.append(RecipeModel(id: UUID(), name: "Hearty Parsnip Soup", origin: "Brtitish"))
        recipes.append(RecipeModel(id: UUID(), name: "Honey and Soy Salmon", origin: "Chinese"))
        
        return recipes
    }
    
}
