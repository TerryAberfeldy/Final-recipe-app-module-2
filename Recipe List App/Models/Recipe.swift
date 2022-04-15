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
    var ingredients:[String]
    var directions:[String]
    
}
