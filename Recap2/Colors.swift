//
//  Colors.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 9/1/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import Foundation
import UIKit

class Colors: NSObject {
    var mainColor: UIColor?
    
    func getMainColor() -> UIColor{
        return UIColorFromRGB(0xB82626)
    }
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

