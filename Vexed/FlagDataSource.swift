//
//  FlagDataSource.swift
//  Vexed
//
//  Created by Brian Williams on 09/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import Foundation
import UIKit

protocol FlagDataSource: class {
    var flag: Flag { get set }
    
    func generateNewFlag(type: FlagType) -> Flag
}
