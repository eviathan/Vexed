//
//  FlagTypes.swift
//  Vexed
//
//  Created by Brian Williams on 09/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation

enum FlagType {
    case SolidFlag
    case CrossFlag
    case StripeFlag
    case CheckeredFlag
}

enum CompositeMode {
    case Overlay
    case Corner
}

enum Orientation: UInt32 {
    case Horizontal
    case Vertical
    
    private static let _count: Orientation.RawValue = {
        var maxValue: UInt32 = 0
        while let _ = Orientation(rawValue: maxValue) {
            maxValue += 1
        }
        return maxValue
    }()
    
    static func random() -> Orientation {
        let rand = arc4random_uniform(_count)
        return Orientation(rawValue: rand)!
    }
}

enum PalletMode {
    case Free
    case FreeHue
    case Complimentary
    case Primary
}

enum ColorMode: UInt32 {
    case Unique
    case Alternating
    case Rainbow
    
    private static let _count: ColorMode.RawValue = {
        var maxValue: UInt32 = 0
        while let _ = ColorMode(rawValue: maxValue) {
            maxValue += 1
        }
        return maxValue
    }()
    
    static func random() -> ColorMode {
        let rand = arc4random_uniform(_count)
        let colorMode = ColorMode(rawValue: rand)!
        return colorMode == .Rainbow ? .Unique : colorMode // NOTE: Disable Rainbow mode until preferences implemented
    }
}

enum BackgroundType {
    case Simple
}
