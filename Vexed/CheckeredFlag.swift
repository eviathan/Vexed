//
//  CheckeredFlag.swift
//  Vexed
//
//  Created by Brian Williams on 12/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

class CheckeredFlag: Flag {
    
    var colorA: UIColor = .random()
    var colorB: UIColor = .random()
    var multiplier: Float = .random(start: 0.35, end: 1.5)
    var xAmount: Int
    var yAmount: Int
    
    init() {
        xAmount = Int(9.0 * multiplier)
        yAmount = Int(16.0 * multiplier)
    }
    
    func draw(rect: CGRect) -> CALayer {
        return createCheckeredFlagLayer(rect: rect)
    }
    
    func createCheckeredFlagLayer(rect: CGRect) -> CAShapeLayer {
        let layer: CAShapeLayer = CAShapeLayer()
        
        // Add background
        let bgLayer = CAShapeLayer()
        bgLayer.path = UIBezierPath(rect: rect).cgPath
        bgLayer.fillColor = colorA.cgColor
        layer.addSublayer(bgLayer)
        
        // Add Checkers
        var counter: Int = 0
        for y in 0...yAmount - 1 {
            for x in 0...xAmount - 1 {
                if (x + counter) % 2 == 0 {
                let check: CAShapeLayer = CAShapeLayer()
                check.path = UIBezierPath(
                    rect: CGRect(x: CGFloat(x) * (rect.width / CGFloat(xAmount)),
                                 y: CGFloat(y) * (rect.height / CGFloat(yAmount)),
                                 width: rect.width / CGFloat(xAmount),
                                 height: rect.height / CGFloat(yAmount))).cgPath
                
                
                check.fillColor = colorB.cgColor
                
                layer.addSublayer(check)
                }
            }
            counter += 1
        }
                
        return layer
    }
}
