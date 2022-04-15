//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Terry Malden on 2022-04-02.
//

import Foundation

class RecipeModel: ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    // Instead of init 'ing the variable in this ViewModel file, it's done in a new Services file.  This keeps you from having to init the same data if you have more than one ViewModel that uses the same data.  So a new folder is containing another class called DataService is created under the Services folder.  The new class contains all the code that fetches data.
    init(){
        
        // Create an instance of data service and get the data
        let service = DataService()
        self.recipes = service.getLocalData()
        
        // Instead of creating an instance of DataService, could have done this, which creates an instance and then calls the method on it:
        //   get rid of the let statement
        // then self.recipes = DataService().getLocalData()
        // An even better way:  in DataService put "static" in front of the func getLocalData and then you don't need to create an instance of DataService, you call just call this method on a data type:
        //   self.recipes = DataService.getLocalData()
        
        // Set the recipes property
        
        
    }
    
}
