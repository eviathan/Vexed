//
//  NumberExtensions.swift
//  Vexed
//
//  Created by Brian Williams on 12/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension Float {
    static func random(start: Float, end: Float) -> Float {
        let normalisedVal =  Float(arc4random()) / Float(UINT32_MAX)
        
        return (normalisedVal * (end - start)) + start;
        
    }
}
