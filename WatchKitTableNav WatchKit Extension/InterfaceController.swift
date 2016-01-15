//
//  InterfaceController.swift
//  WatchKitTableNav WatchKit Extension
//
//  Created by Vinay on 1/13/16.
//  Copyright © 2016 Vinay Shanbhag. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var myTable: WKInterfaceTable!
    let cities = ["Portland","Austin","San Francisco","New York","Cologne","Paris", "Brussels", "Amsterdam", "Bangalore", "Mumbai","Singapore"]
    
    
    func loadTable(){
        myTable.setNumberOfRows(cities.count, withRowType: "MyRowController")
        for i in 0..<cities.count {
            let row = myTable.rowControllerAtIndex(i) as! MyRowController
            row.cityLabel.setText(cities[i])
        }
    }
    
    override init(){
        super.init()
        loadTable()
        
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        print("selected \(cities[rowIndex])")
        pushControllerWithName("DetailController", context: cities[rowIndex])
    }

    
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

}
