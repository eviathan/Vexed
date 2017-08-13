//
//  SolidFlag.swift
//  Vexed
//
//  Created by Brian on 12/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

class SolidFlag: Flag {
    
    var color: UIColor = UIColor.random()
    
    func draw(rect: CGRect) -> CALayer {
        
        let layer: CAShapeLayer = CAShapeLayer()
        
        // Draw BG
        layer.addSublayer(drawBackground(rect: rect, type:.Simple))
        
        return layer;
    }
}
