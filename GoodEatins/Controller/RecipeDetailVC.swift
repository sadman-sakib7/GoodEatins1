//
//  RecipeDetailVC.swift
//  GoodEatins
//
//  Created by mac on 5/18/21.
//  Copyright © 2021 Sadman Sakib. All rights reserved.
//

import UIKit

class RecipeDetailVC: UIViewController {
    
    
    @IBOutlet weak var recipeImg: UIImageView!
    
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeInstructions: UILabel!
    var selectedRecipe: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeImg.image = UIImage(named: selectedRecipe.imageName)
        recipeTitle.text = selectedRecipe.title
        recipeInstructions.text = selectedRecipe.instructions
    }
    

  

}
