//
//  UIColor+Palette.swift
//  UltraVisual
//
//  Created by Shantanu Dutta on 25/08/18.
//  Copyright © 2018 Shantanu Dutta. All rights reserved.
//

import UIKit

extension UIColor {
    class func colorFromRGB(r: Int, g: Int, b: Int) -> UIColor {
        return UIColor(red: CGFloat(Float(r) / 255), green: CGFloat(Float(g) / 255), blue: CGFloat(Float(b) / 255), alpha: 1)
    }
    
    class func palette() -> [UIColor] {
        let palette = [
            UIColor.colorFromRGB(r:85, g: 0, b: 255),
            UIColor.colorFromRGB(r:170, g: 0, b: 170),
            UIColor.colorFromRGB(r:85, g: 170, b: 85),
            UIColor.colorFromRGB(r:0, g: 85, b: 0),
            UIColor.colorFromRGB(r:255, g: 170, b: 0),
            UIColor.colorFromRGB(r:255, g: 255, b: 0),
            UIColor.colorFromRGB(r:255, g: 85, b: 0),
            UIColor.colorFromRGB(r:0, g: 85, b: 85),
            UIColor.colorFromRGB(r:0, g: 85, b: 255),
            UIColor.colorFromRGB(r:170, g: 170, b: 255),
            UIColor.colorFromRGB(r:85, g: 0, b: 0),
            UIColor.colorFromRGB(r:170, g: 85, b: 85),
            UIColor.colorFromRGB(r:170, g: 255, b: 0),
            UIColor.colorFromRGB(r:85, g: 170, b: 255),
            UIColor.colorFromRGB(r:0, g: 170, b: 170)
        ]
        return palette
    }
}
