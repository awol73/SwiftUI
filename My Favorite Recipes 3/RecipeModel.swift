//
//  RecipeModel.swift
//  My Facorite Recipes 3
//
//  Created by Angel Del Negro on 19/12/2022.
//

import UIKit

struct RecipeModel: Identifiable, Hashable {
    
    var id = UUID()
    var name = ""
    var origin = ""
    var favourite = false
    var countryCode = ""
}
