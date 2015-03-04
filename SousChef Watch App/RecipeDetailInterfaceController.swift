//
//  RecipeDetailInterfaceController.swift
//  SousChef
//
//  Created by Ehsan Valizadeh on 3/4/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import Foundation
import WatchKit

class RecipeDetailInterfaceController: WKInterfaceController {
  @IBOutlet weak var nameLabel: WKInterfaceLabel!
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    if let name = context as? String {
      nameLabel.setText(name)
    }
  }
}

