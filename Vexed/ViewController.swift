//
//  ViewController.swift
//  Vexed
//
//  Created by Brian Williams on 09/08/2017.
//  Copyright © 2017 Brian Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FlagDataSource {
    
    @IBOutlet weak var flagView: FlagView!
    
    var flag: Flag = CheckeredFlag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flagView.dataSource = self
    }
    
    @IBAction func updateFlag(_ sender: Any) {
        flag = generateNewFlag(type: .CheckeredFlag)
        flagView.setNeedsDisplay()
    }
    
    func generateNewFlag(type: FlagType) -> Flag {
        switch type {
        case .SolidFlag:
            return SolidFlag()
        case .CrossFlag:
            return CrossFlag()
        case .StripeFlag:
            return StripeFlag()
        case.CheckeredFlag:
            return CheckeredFlag()
        }
    }
}

