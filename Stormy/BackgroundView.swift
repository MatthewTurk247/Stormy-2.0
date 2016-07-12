//
//  BackgroundView.swift
//  Stormy
//
//  Created by Matthew Turk on 6/17/15.
//  Copyright (c) 2015 Turk. All rights reserved.
//

import UIKit

class BackgroundView: UIView {
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        // Background View
        
        //// Color Declarations
        var lightPurple: UIColor = UIColor(red: 0.377, green: 0.075, blue: 0.778, alpha: 1.000)
        var darkPurple: UIColor = UIColor(red: 0.060, green: 0.036, blue: 0.202, alpha: 1.000)
        
        let context = UIGraphicsGetCurrentContext()
        
        //// Gradient Declarations
        let purpleGradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [lightPurple.CGColor, darkPurple.CGColor], [0, 1])
        
        //// Background Drawing
        let backgroundPath = UIBezierPath(rect: CGRectMake(0, 0, self.frame.width, self.frame.height))
        CGContextSaveGState(context)
        backgroundPath.addClip()
        //CGContextDrawLinearGradient(context, purpleGradient, CGPointMake(160, 0), CGPointMake(160, 568), CGGradientDrawingOptions.DrawsBeforeStartLocation, CGContextRestoreGState(context))
        
        CGContextDrawLinearGradient(context, purpleGradient, CGPoint(x: 160, y: 0), CGPoint(x: 160, y: 750), CGGradientDrawingOptions.DrawsBeforeStartLocation)
        
    }

}
        //| (CGGradientDrawingOptions.DrawsAfterEndLocation))