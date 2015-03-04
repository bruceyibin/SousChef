//
//  RecipeDetailInterfaceController.swift
//  SousChef
//
//  Created by Ehsan Valizadeh on 3/4/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import Foundation
import WatchKit
import SousChefKit

class RecipeDetailInterfaceController: WKInterfaceController {
  @IBOutlet weak var nameLabel: WKInterfaceLabel!
  var recipe: Recipe?
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    recipe = context as? Recipe
    nameLabel.setText(recipe?.name)
  }
  
  override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
    return recipe
  }
}

