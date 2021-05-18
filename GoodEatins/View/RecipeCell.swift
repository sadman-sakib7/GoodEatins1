//
//  RecipeCell.swift
//  GoodEatins
//
//  Created by mac on 5/17/21.
//  Copyright © 2021 Sadman Sakib. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImg: UIImageView!
    
    // uicollection (the parent class) vuew has its own awake from nib. hence use super() so that initialization of parent class can happen
    
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImg.layer.cornerRadius = 10
    }
    
    func configureCell(recipe: Recipe) {
        recipeImg.image = UIImage(named: recipe.imageName)
    }
}
