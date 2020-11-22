//
//  NextViewController.swift
//  SwiftProtocolOverExtension
//
//  Created by Sanjeev Gautam on 22/11/20.
//

import UIKit

class SecondViewController: UIViewController, ProtocolAsExtension {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addRightBarButtonByProtocol(title: "Button By Protocol")
        
        self.title = "NextVC"
    }
    
    func rightBarButtonActionFromProtocol() {
        print("rightBarButtonAction From Protocol called")
        
        if let nextVC = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController {
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}
