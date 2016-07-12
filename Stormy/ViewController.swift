//
//  ViewController.swift
//  Stormy
//
//  Created by Matthew Turk on 12/24/15.
//  Copyright (c) 2015 Turk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dailyWeather: DailyWeather? {
        didSet {
            configureView()
        }
    }
    @IBOutlet var weatherIcon: UIImageView?
    @IBOutlet var summaryLabel: UILabel?
    @IBOutlet var sunriseTimeLabel: UILabel?
    @IBOutlet var sunsetTimeLabel: UILabel?
    @IBOutlet var lowTemperatureLabel: UILabel?
    @IBOutlet var highTemperatureLabel: UILabel?
    @IBOutlet var precipitationLabel: UILabel?
    @IBOutlet var humidityLabel: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    func configureView() {
        if let weather = dailyWeather {
            //Update UI with info from data model
            weatherIcon?.image = weather.largeIcon
            summaryLabel?.text = weather.summary
            sunriseTimeLabel?.text = weather.sunriseTime
            sunsetTimeLabel?.text = weather.sunsetTime
            
            if let lowTemp = weather.minTemperature {
                lowTemperatureLabel?.text = "\(lowTemp)º"
            } else {
                lowTemperatureLabel?.text = "N/A"
            }
            
            if let highTemp = weather.maxTemperature {
                highTemperatureLabel?.text = "\(highTemp)º"
            } else {
                highTemperatureLabel?.text = "N/A"
            }
            
            if let rain = weather.precipChance {
                precipitationLabel?.text = "\(rain)%"
            } else {
                precipitationLabel?.text = "N/A"
            }
            
            if let humidity = weather.humidity {
                humidityLabel?.text = "\(humidity)%"
            } else {
                humidityLabel?.text = "N/A"
            }
            
            self.title = weather.day
        }
        if let buttonFont = UIFont(name: "San Francisco", size: 20.0) {
            let barButtonAttributesDictionary: [String: AnyObject]? = [
                NSForegroundColorAttributeName: UIColor.whiteColor(),
                NSFontAttributeName: buttonFont
            ]
            
            UIBarButtonItem.appearance().setTitleTextAttributes(barButtonAttributesDictionary, forState: .Normal)
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

