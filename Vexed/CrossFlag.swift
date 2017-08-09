//
//  File.swift
//  Vexed
//
//  Created by Brian Williams on 09/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

class CrossFlag : Flag {
    
    var xOffset: Float = 0.0
    var yOffset: Float = 0.0
    var thickness: Float = 5.0
    
    var backgroundColor: UIColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    var crossColor: UIColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
    
    func drawFlag(rect: CGRect) -> UIView {
        
        let view: UIView = UIView(frame: rect)
        
        // Draw BG
        view.layer.addSublayer(drawBackground(rect: rect, type:.Simple))
        
        // Draw Cross
        view.layer.addSublayer(drawCross())
        
        return view;
    }
    
    func drawCross() -> CAShapeLayer{
        let layer = CAShapeLayer()
        
        layer.path = UIBezierPath(roundedRect: CGRect(x: 64, y: 64, width: 160, height: 160), cornerRadius: 50).cgPath
        layer.fillColor = UIColor.red.cgColor
        
        return layer
    }
}
