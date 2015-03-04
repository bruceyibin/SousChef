//
//  RecipesInterfaceController.swift
//  SousChef
//
//  Created by Ehsan Valizadeh on 3/4/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import Foundation
import WatchKit
import SousChefKit


class RecipesInterfaceController: WKInterfaceController {
  @IBOutlet weak var table: WKInterfaceTable!
  let recipeStore = RecipeStore()
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    let recipes = recipeStore.recipes
    table.setNumberOfRows(recipes.count, withRowType: "RecipeRowType")
    for (index, recipe) in enumerate(recipes) {
      let controller = table.rowControllerAtIndex(index) as RecipeRowController
      controller.textLabel.setText(recipe.name)
      controller.ingredientsLabel.setText("\(recipe.ingredients.count) ingredients")
    }
  }
  
  override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
    return recipeStore.recipes[rowIndex]
  }
}