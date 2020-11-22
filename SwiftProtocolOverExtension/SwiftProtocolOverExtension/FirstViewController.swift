//
//  FirstViewController.swift
//  SwiftProtocolOverExtension
//
//  Created by Sanjeev Gautam on 22/11/20.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addRightBarButtonByExtenstion(title: "2nd Page")
        
        self.title = "1st"
    }

    @objc override func rightBarButtonByExtenstionAction() {
        print("rightBarButtonByExtenstionAction called on 1st VC")
        
        if let secondVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}

