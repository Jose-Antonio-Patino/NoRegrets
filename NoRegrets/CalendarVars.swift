//
//  CalendarVars.swift
//  NoRegrets
//
//  Created by Jose Patino on 3/30/20.
//  Copyright © 2020 Jose Patino. All rights reserved.
//

import Foundation

let date = Date()
let calendar =  Calendar.current

let day  = calendar.component(.day, from: date)
let weekday = calendar.component(.weekday, from: date)
let month = calendar.component(.month, from: date)
let year = calendar.component(.year, from: date)
