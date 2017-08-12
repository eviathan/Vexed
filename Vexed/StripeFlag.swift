//
//  StripeFlag.swift
//  Vexed
//
//  Created by Brian on 10/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

class StripeFlag: Flag {
    
    var MIN_STRIPES: UInt32 {
        get {
            return colorMode == .Rainbow ? 5 : 2
        }
    }
    
    var  MAX_STRIPES: UInt32 {
        get {
            return orientation == .Horizontal ? 5 : 15
        }
    }
    
    var amountOfStripes: Int = 2;
    var amountOfColours: Int = 2;
    var orientation: Orientation = Orientation.random()
    
    var colorMode: ColorMode = .Alternating
    var colors: [UIColor] = [UIColor]()
    
    init(bypass: Bool = false) {
        if(!bypass){
            
            amountOfStripes = Int(arc4random_uniform(MAX_STRIPES - MIN_STRIPES) + MIN_STRIPES)
            let randomColorMode = ColorMode.random()
            colorMode = amountOfStripes > 4 ? .Alternating : randomColorMode
            amountOfColours = getAmountOfColors()
            
            for i in 0...amountOfColours {
                if colorMode == .Rainbow {
                    let hue: CGFloat = CGFloat(i) / CGFloat(amountOfColours)
                    colors.append(UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0))
                } else {
                    colors.append(.random())
                }
            }
        }
    }
    
    func drawFlag(rect: CGRect) -> CALayer {
        let layer = CAShapeLayer()
        
        for i in 0...amountOfStripes {
            layer.addSublayer(createStripe(rect: rect, index: i))
        }
        
        return layer
    }
    
    func createStripe(rect: CGRect, index: Int) -> CAShapeLayer {
        
        let stripe = CAShapeLayer()
        let stripeRect = getCurrentStripeRect(rect: rect, index: index)
        
        stripe.path = UIBezierPath(rect: stripeRect).cgPath
        stripe.fillColor = getCurrentColor(index: index).cgColor
        
        return stripe
    }
    
    private func getAmountOfColors() -> Int {
        switch colorMode {
        case .Alternating:
            return 2;
        case .Unique:
            fallthrough
        case .Rainbow:
            return amountOfStripes
        }
    }
    
    func getCurrentStripeRect(rect: CGRect, index: Int) -> CGRect {
        
        let width = rect.width / CGFloat(amountOfStripes)
        let height = rect.height / CGFloat(amountOfStripes)
        
        switch orientation {
        case .Horizontal:
            return CGRect(x: 0, y: height * CGFloat(index), width: rect.width, height: height)
        case .Vertical:
            return CGRect(x: width * CGFloat(index), y: 0, width: width, height: rect.height)
        }
    }
    
    func getCurrentColor(index: Int) -> UIColor {
        switch colorMode {
        case .Alternating:
            return colors[index % 2]
        case .Unique:
            fallthrough
        case .Rainbow:
            return colors[index]
        }
    }
}
