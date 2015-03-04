//
//  RecipeDirectionsInterfaceController.swift
//  SousChef
//
//  Created by Ehsan Valizadeh on 3/4/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import WatchKit
import Foundation
import SousChefKit

class RecipeDirectionsInterfaceController: WKInterfaceController {
  
  var recipe: Recipe?

  @IBOutlet weak var table: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        recipe = context as? Recipe
    
      if let steps = recipe?.steps {
        table.setNumberOfRows(steps.count, withRowType: "StepRow")
        for (index, step) in enumerate(steps) {
          let controller = table.rowControllerAtIndex(index) as StepRowController
          controller.stepLabel.setText("Step \(index + 1)")
          controller.directionsLabel.setText(step)
        }
      }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
