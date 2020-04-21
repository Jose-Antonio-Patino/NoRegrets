//
//  SummaryCell.swift
//  NoRegrets
//
//  Created by Jose Patino on 4/15/20.
//  Copyright © 2020 Jose Patino. All rights reserved.
//

import UIKit

class SummaryCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var heartRateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
