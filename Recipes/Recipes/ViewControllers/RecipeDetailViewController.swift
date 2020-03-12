//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Chris Price on 3/11/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    @IBOutlet weak var recipeTitleLabel: UILabel!
    @IBOutlet weak var recipeInstructionsTextView: UITextView!
    
    var recipe: Recipe? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let recipe = recipe else { return }
        if self.isViewLoaded {
            recipeTitleLabel.text = recipe.name
            recipeInstructionsTextView.text = recipe.instructions
        }
    }
}
