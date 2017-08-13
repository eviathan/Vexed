//
//  File.swift
//  Vexed
//
//  Created by Brian Williams on 09/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

// TODO:
// • Add Diagonal Cross
// • Fix Overlay Cross
class CrossFlag : Flag {
    
    var xOffset = CGFloat(1.0)
    var yOffset = CGFloat(1.0)
    var thickness = CGFloat(40.0)
    var floatingScale = CGFloat(0.6)
    var randomNumber = arc4random_uniform(4)
    
    
    var isOffset: Bool { get { return randomNumber % 30 == 0 } }
    var isDoubleLayered: Bool { get { return randomNumber % 3 == 0 && thickness > 80 } }
    var isDoubleLayeredOffset: Bool { get { return randomNumber % 2 == 0 } }
    
    var isFloating: Bool = false
    
    var backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    var crossColor = UIColor.random()
    
    func draw(rect: CGRect) -> CALayer {
        
        let layer: CAShapeLayer = CAShapeLayer()
        
        randomiseValues()
        
        // Draw BG
        layer.addSublayer(drawBackground(rect: rect, type:.Simple))
        
        // Draw Cross
        layer.addSublayer(drawCross(rect: rect))
        
        return layer;
    }
    
    func randomiseValues(){
        thickness = CGFloat(arc4random_uniform(100) + 40)
        yOffset = isOffset ? CGFloat(0.5) : CGFloat(1.0)
    }
    
    func drawCross(rect: CGRect) -> CAShapeLayer{
        
        let layer = CAShapeLayer()
        
        drawStandardCross(rect: rect, layer: layer)
        //drawCrossOverlay(rect: rect, layer: layer)
        
        return layer
    }
    
    func drawStandardCross(rect: CGRect, layer: CAShapeLayer) {
        let horizontal = CAShapeLayer()
        if isFloating {
            
        }
        else {
            horizontal.path = UIBezierPath(rect: CGRect(x: 0, y: ((rect.height * 0.5) - (thickness * 0.5)) * yOffset, width: rect.width, height: thickness)).cgPath
        }
        horizontal.fillColor = crossColor.cgColor
        layer.addSublayer(horizontal)
        
        
        let vertical = CAShapeLayer()
        if isFloating {
            
        }
        else {
            vertical.path = UIBezierPath(rect: CGRect(x: ((rect.width * 0.5) - (thickness * 0.5)) * xOffset, y: 0, width: thickness, height: rect.height)).cgPath
        }
        vertical.fillColor = crossColor.cgColor
        layer.addSublayer(vertical)
    }
    
    func drawCrossOverlay(rect: CGRect, layer: CAShapeLayer){
        if isDoubleLayered {
            let crossColorB = UIColor.random().cgColor
            let offsetMultiplier = CGFloat(0.6)
            
            if !isDoubleLayeredOffset {
                let horizontal = CAShapeLayer()
                if isFloating {
                    
                }
                else {
                    horizontal.path = UIBezierPath(rect: CGRect(x: 0, y: ((rect.height * 0.5) - (thickness * 0.5)) * yOffset, width: rect.width, height: thickness * offsetMultiplier)).cgPath
                }
                horizontal.fillColor = crossColorB
                layer.addSublayer(horizontal)
                
                
                let vertical = CAShapeLayer()
                if isFloating {
                    
                }
                else {
                    vertical.path = UIBezierPath(rect: CGRect(x: ((rect.width * 0.5) - (thickness * 0.5)) * xOffset, y: 0, width: thickness * offsetMultiplier, height: rect.height)).cgPath
                }
                vertical.fillColor = crossColorB
                layer.addSublayer(vertical)
            }
            else {
                let horizontal = CAShapeLayer()
                if isFloating {
                    
                }
                else {
                    horizontal.path = UIBezierPath(rect: CGRect(x: 0, y: ((rect.height * 0.5) - ((thickness * offsetMultiplier) * 0.5)) * yOffset, width: rect.width, height: thickness * offsetMultiplier)).cgPath
                }
                horizontal.fillColor = crossColorB
                layer.addSublayer(horizontal)
                
                
                let vertical = CAShapeLayer()
                if isFloating {
                    
                }
                else {
                    vertical.path = UIBezierPath(rect: CGRect(
                        x: ((rect.width * 0.5 * xOffset) - ((thickness * offsetMultiplier) * 0.5)),
                        y: 0,
                        width: thickness * offsetMultiplier,
                        height: rect.height)).cgPath
                }
                vertical.fillColor = crossColorB
                layer.addSublayer(vertical)
            }
        }
    }
}
