//
//  CompositeFlag.swift
//  Vexed
//
//  Created by Brian Williams on 13/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

class CompositeFlag: Flag {
    
    var flags: [CALayer] = [CALayer]()
    var mode: CompositeMode = .Corner
    
    func draw(rect: CGRect) -> CALayer {
        
        let layer = CAShapeLayer()
        
        switch mode {
        case .Corner:
            layer.addSublayer(getCornerFlag())
            break
        case .Overlay:
            flags.forEach { layer.addSublayer($0) }
            break
        }
        
        return layer
    }
    
    
    private func getCornerFlag() -> CAShapeLayer {
        let layer = CAShapeLayer()
        
        
        return layer
    }
}
