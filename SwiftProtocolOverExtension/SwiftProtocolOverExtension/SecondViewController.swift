//
//  SecondViewController.swift
//  SwiftProtocolOverExtension
//
//  Created by Sanjeev Gautam on 22/11/20.
//

import UIKit

class SecondViewController: UIViewController, ViewControllerProtocols {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addRightBarButtonByProtocol(title: "3rd Page")
        
        self.title = "2nd"
    }
    
    func rightBarButtonByProtocolAction() {
        print("rightBarButtonByProtocolAction called on 2nd VC")
        
        if let thirdVC = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController {
            self.navigationController?.pushViewController(thirdVC, animated: true)
        }
    }
}
