//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Terry Malden on 2022-04-03.
//

// Create a new View file (SwiftUI View type file) called RecipeDetailView to display single recipe details

import SwiftUI

struct RecipeDetailView: View {
  
    // Declare a new variable of the data type Recipe that contains the variables of a recipe as declared in Models -- Recipe
    // This is not set to a particular instance of Recipe because the RecipeListView will pass that information depending on which item in the list is pressed
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
           // MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                . scaledToFill()
            // MARK: Ingredients
            VStack(alignment: .leading){
                Text("Ingredients")
                    .font(.headline)
                    .padding(.vertical, 5.0)

                //    WAS
//                ForEach(recipe.ingredients, id:\.self){item in
//                    Text("*   " + item)
                
                // CHANGED TO -- no longer need the id:\.self paramenter because ingredients is an identifiable object
                   
                ForEach(recipe.ingredients){item in
                        Text("*   " + item.name)
                }
            }
            .padding(.horizontal)
            Divider()
            //MARK:  Directions
            VStack(alignment: .leading){
                Text("Directions")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 5.0)
                ForEach(0..<recipe.directions.count, id:\.self){item in
                    Text(String(item + 1) + ".  " + recipe.directions[item])
                    .padding(.bottom, 5.0)}
            }
            .padding(.horizontal)
        }
        }  // end of SrollView
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {

//   Because the new variable recipe:Recipe has not been set to any instance, there's an error message saying that RecipeDetailView is missing an argument
  // To fix this you pass in a dummy recipe to the detail view.  This also lets you see something in Preview
       
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
