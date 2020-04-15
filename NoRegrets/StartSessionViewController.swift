//
//  StartSessionViewController.swift
//  NoRegrets
//
//  Created by Jose Patino on 4/14/20.
//  Copyright © 2020 Jose Patino. All rights reserved.
//

import UIKit

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
                sessionButton.setTitleColor(UIColor.orange, for: .normal)//(red: 246, green: 136, blue: 104, alpha: 1), for: .normal)
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

}
