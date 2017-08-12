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
    static func random(palletMode: PalletMode = .FreeHue) -> UIColor{
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    }
    
    static func random(amount: Int) -> [UIColor] {
        var output: [UIColor] = [UIColor]()
        for _ in 0...amount {
            output.append(random())
        }
        return output
    }
}
