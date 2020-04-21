//
//  InterfaceController.swift
//  NoRegrets WatchKit Extension
//
//  Created by Jose Patino on 2/23/20.
//  Copyright © 2020 Jose Patino. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController, WKExtendedRuntimeSessionDelegate
{
 
    let session = WKExtendedRuntimeSession()

    var isSessionOn = false
    
    @IBOutlet weak var sessionButton: WKInterfaceButton!
    

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        session.delegate = self
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
            // Sets up the button to stop
            sessionButton.setBackgroundColor(UIColor.white)
            let attString = NSMutableAttributedString(string: "Stop")
            attString.setAttributes([NSAttributedString.Key.foregroundColor: UIColor.orange],
                                    range: NSMakeRange(0, attString.length))
            self.sessionButton.setAttributedTitle(attString)
            
            isSessionOn = true
            
            // Starts the session
            session.start()
        }
        else
        {
            // Reverts the button back to the original look
            sessionButton.setBackgroundColor(UIColor.orange)
            let attString = NSMutableAttributedString(string: "Begin")
            attString.setAttributes([NSAttributedString.Key.foregroundColor: UIColor.white],
                                    range: NSMakeRange(0, attString.length))
            self.sessionButton.setAttributedTitle(attString)
            isSessionOn = false
            
            //Stops the session
            session.invalidate()
        }
    }
    
    func extendedRuntimeSession(_ extendedRuntimeSession: WKExtendedRuntimeSession, didInvalidateWith reason: WKExtendedRuntimeSessionInvalidationReason, error: Error?)
    {
        /*
         Handle the error if encountered
         */
    }
    
    func extendedRuntimeSessionDidStart(_ extendedRuntimeSession: WKExtendedRuntimeSession)
    {
        let userDefault = UserDefaults.init()
        userDefault.addSuite(named: "com.noRegrets.noRegrets")
        userDefault.synchronize()
    }
    
    func extendedRuntimeSessionWillExpire(_ extendedRuntimeSession: WKExtendedRuntimeSession)
    {
        /*
         Let user know that the session is about to expire
         */
    }
    
    /*
     share it with our app group
     let userDefault = UserDefaults.init()
     userDefault.addSuite(named: "com.noRegrets.noRegrets")
     userDefault.synchronize()
     userDefault.object(forKey: "heartRateData")
     */
    
    
}
