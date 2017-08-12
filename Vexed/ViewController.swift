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
    
    var flag: Flag = CrossFlag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flagView.dataSource = self
    }
    
    @IBAction func updateFlag(_ sender: Any) {
        flag = generateNewFlag(type: .SolidFlag)
        flagView.setNeedsDisplay()
    }
    
    func generateNewFlag(type: FlagType) -> Flag {
        var flag: Flag?
        
        switch type {
        case .SolidFlag:
            flag = SolidFlag()
            break
        case .CrossFlag:
            flag = CrossFlag()
            break
        }
        
        return flag!
    }
}

