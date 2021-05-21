//
//  ViewController.swift
//  GoodEatins
//
//  Created by mac on 5/15/21.
//  Copyright © 2021 Sadman Sakib. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    //let data = DataSet()
    var categoryToPass: String! // holding the things we are going to pass to the next view-controller through segway

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell {
               cell.configureCell(category: data.categories[indexPath.row])
               return cell
           }
           return UITableViewCell()
       }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoryToPass = data.categories[indexPath.row].title  // getting the category title like burger,sandwitch ...
         performSegue(withIdentifier: "toRecipesSelection", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipesVC = segue.destination as? RecipesSelectionVC {
            recipesVC.selectedCategory = categoryToPass   // passing the category title like burger,sandwitch ...
        }
    }
    
}

