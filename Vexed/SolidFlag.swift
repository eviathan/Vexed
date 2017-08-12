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
    
    func drawFlag(rect: CGRect) -> UIView {
        
        let view: UIView = UIView(frame: rect)
        
        // Draw BG
        view.layer.addSublayer(drawBackground(rect: rect, type:.Simple))
        
        return view;
    }
}
