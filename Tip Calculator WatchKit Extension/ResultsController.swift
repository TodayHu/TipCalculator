//
//  ResultsController.swift
//  Tip Calculator
//
//  Created by Elaine Reyes on 4/10/15.
//  Copyright (c) 2015 UlyssaElaine. All rights reserved.
//

import UIKit
import WatchKit


class ResultsController: WKInterfaceController {

    @IBOutlet weak var tipLabel: WKInterfaceLabel!
    @IBOutlet weak var costOfMealLabel: WKInterfaceLabel!
    @IBOutlet weak var tipDollarAmountLabel: WKInterfaceLabel!
    @IBOutlet weak var totalLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        var tipDictionary = context as [String:Int]
        
        var tipPercentage = tipDictionary["tipPercentage"]
        
        var costOfMeal = tipDictionary["costOfMeal"]
        
        var tipDollarAmount = Float(tipPercentage) * Float(costOfMeal) * 0.01
        
        var mealTotal = tipDollarAmount + Float(costOfMeal)
        
        self.tipLabel.setText("\(tipPercentage)% Tip:")
        self.costOfMealLabel.setText("$\(costOfMeal)")
        self.tipDollarAmountLabel.setText("$\(tipDollarAmount)")
        self.totalLabel.setText("$\(mealTotal)")
    }

}
