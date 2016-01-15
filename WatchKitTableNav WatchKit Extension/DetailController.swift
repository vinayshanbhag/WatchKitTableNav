//
//  DetailController.swift
//  WatchKitTableNav
//
//  Created by Vinay on 1/14/16.
//  Copyright © 2016 Vinay Shanbhag. All rights reserved.
//

import WatchKit
import Foundation


class DetailController: WKInterfaceController {

    @IBOutlet var photo: WKInterfaceImage!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        photo.setImage(UIImage(named:(context as? String)!))
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
