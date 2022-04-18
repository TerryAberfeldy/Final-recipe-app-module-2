//
//  DataService.swift
//  Recipe List App
//
//  Created by Terry Malden on 2022-04-02.
//

// This file is responsible for all the data fetching code.  It's good to have it here rather than in multiple ViewModels so you don't have to enter it multiple times and because, if there are problems in retrieving data, this is the place to look.

import Foundation

class DataService{
   
    func getLocalData() -> [Recipe] {
       // parse local JSON file
        
        // Get a url path to the JSON file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // A third way to protect against pathString being nil is a guard statement.  If it is nil it returns an empty Recipe list
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            
            // Create a data object
            let data = try Data(contentsOf: url)
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            do{
                let recipeData = try decoder.decode([Recipe].self, from: data)
                 // Add the unique IDs
                for r in recipeData{
                    r.id = UUID()
                   // Add unique id to ingredients -- this loops through each recipe and gives each ingredient a unique id
                    for i in r.ingredients{
                        i.id = UUID()
                    }
                    
                }
                 // Return the recipes
                return recipeData
                
            }
            catch{
                // error with parsing json
                print(error)
            }
          
        
        }
        catch{
            // error with getting data
            print(error)
        }
        
        return[Recipe]()    
        
    }
    
    
    
    
}
