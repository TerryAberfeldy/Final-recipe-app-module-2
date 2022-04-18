//
//  Recipe.swift
//  Recipe List App
//
//  Created by Terry Malden on 2022-04-02.
//

import Foundation

class Recipe:  Identifiable, Decodable{
   
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[Ingredient] // changed from String to be an array of Ingredient
    var directions:[String]
    var highlights:[String]  // this is a new data element in the new JSON file
}

class Ingredient: Identifiable, Decodable{
    
    var id:UUID?
    var name: String
    var num: Int?    // these three variables are optional because not all ingredients include them
    var denom:Int?
    var unit:String?
}
