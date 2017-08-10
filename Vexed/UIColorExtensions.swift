//
//  UIColorExtensions.swift
//  Vexed
//
//  Created by Brian Williams on 09/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func random() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    static func random(amount: Int) -> [UIColor] {
        var output: [UIColor] = [UIColor]()
        for _ in 0...amount {
            output.append(random())
        }
        return output
    }
}
