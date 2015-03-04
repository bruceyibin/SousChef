//
//  RecipesInterfaceController.swift
//  SousChef
//
//  Created by Ehsan Valizadeh on 3/4/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import Foundation
import WatchKit

class RecipesInterfaceController: WKInterfaceController {
  @IBOutlet weak var table: WKInterfaceTable!
  let recipes = ["Chessburger", "Pizza", "Salad"]
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    table.setNumberOfRows(recipes.count, withRowType: "RecipeRowType")
    for (index, recipe) in enumerate(recipes) {
      let controller = table.rowControllerAtIndex(index) as RecipeRowController
      controller.textLabel.setText(recipe)
    }
  }
}