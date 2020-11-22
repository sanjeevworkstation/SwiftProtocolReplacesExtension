//
//  ThirdViewController.swift
//  SwiftProtocolOverExtension
//
//  Created by Sanjeev Gautam on 22/11/20.
//

import UIKit

class ThirdViewController: UIViewController, ViewControllerProtocols {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addRightBarButtonByProtocol(title: "4th Page")
        
        self.title = "3rd"
    }
    
    func rightBarButtonByProtocolAction() {
        print("rightBarButtonByProtocolAction called on 3rd VC")
    }
}
