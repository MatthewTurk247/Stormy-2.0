//
//  DailyWeatherTableViewCell.swift
//  Stormy
//
//  Created by Matthew Turk on 12/27/15.
//  Copyright © 2015 Turk. All rights reserved.
//

import UIKit
import Foundation

class DailyWeatherTableViewCell: UITableViewCell {

    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var weatherIcon: UIImageView!
    @IBOutlet var dayLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
