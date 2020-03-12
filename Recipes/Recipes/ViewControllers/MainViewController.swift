//
//  MainViewController.swift
//  Recipes
//
//  Created by Chris Price on 3/11/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    let networkClient = RecipesNetworkClient()
    var allRecipes: [Recipe] = []
    var reecipesTableViewController: RecipesTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkClient.fetchRecipes{ recipes, error in
            guard error == nil else {
                NSLog("Error loading recipes: \(error!)")
                return
            }
            
            if let recipes = recipes {
                self.allRecipes = recipes
            } else { return }
        }
    }
    
    @IBAction func typingFinished(_ sender: UITextField) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EmbedSegue" {
            
        }
    }
    
}
