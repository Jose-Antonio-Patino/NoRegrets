//
//  InterfaceController.swift
//  NoRegrets WatchKit Extension
//
//  Created by Jose Patino on 2/23/20.
//  Copyright © 2020 Jose Patino. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var sessionButton: WKInterfaceButton!
    var isSessionOn = false
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    @IBAction func onBeginButton()
    {
        if ( !isSessionOn )
        {
            sessionButton.setBackgroundColor(UIColor.white)
            let attString = NSMutableAttributedString(string: "Stop")
            attString.setAttributes([NSAttributedString.Key.foregroundColor: UIColor.orange], range: NSMakeRange(0, attString.length))
            self.sessionButton.setAttributedTitle(attString)
            isSessionOn = true
        }
        else
        {
            sessionButton.setBackgroundColor(UIColor.orange)
            let attString = NSMutableAttributedString(string: "Begin")
            attString.setAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], range: NSMakeRange(0, attString.length))
            self.sessionButton.setAttributedTitle(attString)
            isSessionOn = false
        }
    }
    
}
