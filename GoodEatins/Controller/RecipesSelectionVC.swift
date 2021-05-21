//
//  RecipesSelectionVC.swift
//  GoodEatins
//
//  Created by mac on 5/17/21.
//  Copyright © 2021 Sadman Sakib. All rights reserved.
//

import UIKit

class RecipesSelectionVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   

    
    @IBOutlet weak var collectionView: UICollectionView!
    
     var selectedCategory: String! // Recieves the category name selected from HomeVC
     var recipes: [Recipe]!
     //let data = DataSet()
     var recipeToPass: Recipe!

     override func viewDidLoad() {
         super.viewDidLoad()
         collectionView.delegate = self
         collectionView.dataSource = self
         recipes = data.getRecipes(forCategoryTitle: selectedCategory) // Retrievs the array of                                                                   Burgers/salad/Pizza ..
     }
     
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return recipes.count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipeCell {
             let recipe = recipes[indexPath.item]
             cell.configureCell(recipe: recipe)
            print("populating cell \(recipe)"  )
             return cell
         }
        print("populating cell 22")
         return UICollectionViewCell()
        
     }
     
    //gets called once a item in collection view gets selected
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recipeToPass = recipes[indexPath.item]
        performSegue(withIdentifier: "toRecipeSelection", sender: self)
    }
    
    // It is for the 3ed view : detail recepi
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsVC = segue.destination as? RecipeDetailVC {
            detailsVC.selectedRecipe = recipeToPass
        }
    }
    
    // Grphics purposes
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimension = (width / 2) - 15
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
    

}
