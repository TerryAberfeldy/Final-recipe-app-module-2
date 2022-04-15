//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Terry Malden on 2022-04-15.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
       
        TabView{
            Text("Featured view")
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
            
        }
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
