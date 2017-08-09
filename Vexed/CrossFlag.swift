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
    func drawFlag(rect: CGRect) -> CAShapeLayer {
        
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: 64, y: 64, width: 160, height: 160), cornerRadius: 50).cgPath
        layer.fillColor = UIColor.red.cgColor
        
        return layer;
    }
}
