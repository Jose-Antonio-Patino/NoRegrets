//
//  CalendarViewController.swift
//  NoRegrets
//
//  Created by Jose Patino on 3/29/20.
//  Copyright © 2020 Jose Patino. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{

    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var calendarCollectionView: UICollectionView!
    
    var monthsArr = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    let DaysOfMonth = ["Monday", "Tuesday", "Wednesday","Thursday","Friday","Saturday","Sunday"]
    var DaysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30 ,31, 30, 31]
    var currentMonthIndex = 0
    var currentYear: Int = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        currentMonthIndex = Calendar.current.component(.month, from: Date()) - 1
        currentYear = Calendar.current.component(.year, from: Date())
        monthLabel.text="\(monthsArr[currentMonthIndex]) \(currentYear)"
    }
    
    @IBAction func onLeftButton(_ sender: Any)
    {
        currentMonthIndex -= 1
        
        if currentMonthIndex < 0
        {
            currentMonthIndex = 11
            currentYear -= 1
        }
        monthLabel.text="\(monthsArr[currentMonthIndex]) \(currentYear)"
        
        calendarCollectionView.reloadData()

    }
    
    @IBAction func onRightButton(_ sender: Any)
    {
        currentMonthIndex += 1
        
        if currentMonthIndex > 11
        {
            currentMonthIndex = 0
            currentYear += 1
        }

        monthLabel.text="\(monthsArr[currentMonthIndex]) \(currentYear)"
        
        calendarCollectionView.reloadData()

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return DaysInMonth[currentMonthIndex]
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = calendarCollectionView.dequeueReusableCell(withReuseIdentifier: "Calendar", for: indexPath) as! DateCollectionViewCell
        cell.backgroundColor = UIColor.clear
        cell.dateLabel.text = "\(indexPath.row + 1)"
        
        return cell
    }
    
}
