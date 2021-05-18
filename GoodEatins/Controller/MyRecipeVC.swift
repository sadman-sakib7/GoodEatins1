//
//  MyRecipeVC.swift
//  GoodEatins
//
//  Created by mac on 5/18/21.
//  Copyright © 2021 Sadman Sakib. All rights reserved.
//

import UIKit

class MyRecipeVC: UIViewController {

    @IBOutlet weak var titletxt: UITextField!
    
    @IBOutlet weak var detailtxt: UITextField!
    let data = DataSet()
    var recipe = Recipe(title: "", instructions: "", imageName: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

         recipe = Recipe(title: titletxt.text!, instructions: detailtxt.text!, imageName: "sandwich0")
        
        data.myRecipes.append(recipe)
    }
    

    @IBAction func submitbtn(_ sender: Any) {
        recipe = Recipe(title: titletxt.text!, instructions: detailtxt.text!, imageName: "sandwich0")
        
        data.myRecipes.append(recipe)
        
    }
    
   

}
