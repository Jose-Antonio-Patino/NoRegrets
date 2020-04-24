//
//  StartSessionViewController.swift
//  NoRegrets
//
//  Created by Jose Patino on 4/14/20.
//  Copyright © 2020 Jose Patino. All rights reserved.
//

import UIKit
import HealthKit

let healthStore:HKHealthStore = HKHealthStore()


class StartSessionViewController: UIViewController
{

    var isSessionOn = false
        
    @IBOutlet weak var sessionButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()


    }
    
    @IBAction func onSessionButton(_ sender: Any)
    {
        if ( !isSessionOn )
        {
            sessionButton.backgroundColor = UIColor.white
            sessionButton.setTitle("Stop", for: .normal)
            sessionButton.setTitleColor(UIColor.orange, for: .normal)
            isSessionOn = true
        }
        else
        {
            sessionButton.backgroundColor = UIColor.orange
            sessionButton.setTitle("Begin", for: .normal)
            sessionButton.setTitleColor(UIColor.white, for: .normal)
            isSessionOn = false
        }
    }
    
    func authorizeHealthKitInApp()
    {
        let allTypes = Set([HKObjectType.quantityType(forIdentifier: .heartRate)!])

        healthStore.requestAuthorization(toShare: allTypes, read: allTypes) { (success, error) in
            if !success {
                print(error as Any)
            }
        }
    }
    
    /*
     Grab data: Heart rate
     
     share it with our app group
     let userDefault = UserDefaults.init()
     userDefault.addSuite(named: "com.noRegrets.noRegrets")
     userDefault.object(forKey: "heartRateData")
     userDefault.synchronize()
     */

}
