//
//  FlagExtensions.swift
//  Vexed
//
//  Created by Brian Williams on 09/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

extension Flag {
    func drawBackground(rect: CGRect, type: BackgroundType) -> CAShapeLayer {
        return drawBackground(rect: rect, type: type, color: UIColor.random())
    }
    
    func drawBackground(rect: CGRect, type: BackgroundType, color: UIColor) -> CAShapeLayer {
        let layer = CAShapeLayer()
        
        layer.path = UIBezierPath(rect: rect).cgPath
        layer.fillColor = color.cgColor
        
        return layer
    }
    
    func getRandomizedBackground(){
        // IMPLMENT THIS
    }
}
