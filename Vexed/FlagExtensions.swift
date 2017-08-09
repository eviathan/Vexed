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
        let layer = CAShapeLayer()
        
        layer.path = UIBezierPath(rect: rect).cgPath
        layer.fillColor = UIColor.random().cgColor
        
        return layer
    }
    
    func getRandomizedBackground(){
        // IMPLMENT THIS
    }
}
