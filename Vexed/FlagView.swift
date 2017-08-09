//
//  FlagView.swift
//  Vexed
//
//  Created by Brian Williams on 09/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import UIKit

class FlagView: UIView {
    
    weak var dataSource: FlagDataSource?
    
    override func draw(_ rect: CGRect) {
        let flag = dataSource?.flag
        if let flagShape = flag?.drawFlag(rect: rect) {
            self.layer.addSublayer(flagShape)
        }
    }
}
