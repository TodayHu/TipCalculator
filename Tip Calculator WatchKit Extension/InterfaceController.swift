//
//  InterfaceController.swift
//  Tip Calculator WatchKit Extension
//
//  Created by Elaine Reyes on 4/10/15.
//  Copyright (c) 2015 UlyssaElaine. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var dollarLabel: WKInterfaceLabel!
    var costOfMeal = 5
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func sliderChanged(value: Float) {
        self.dollarLabel.setText("$\(value)");
        self.costOfMeal = Int(value)
    }
    
    @IBAction func tenTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.costOfMeal,"tipPercentage:":10])
    }
    
    @IBAction func fifteenTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.costOfMeal,"tipPercentage:":15])
    }
    
    @IBAction func twentyTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.costOfMeal,"tipPercentage:":20])
    }
    
}
