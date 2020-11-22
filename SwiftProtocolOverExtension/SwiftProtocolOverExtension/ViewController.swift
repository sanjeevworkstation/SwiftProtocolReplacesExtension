//
//  ViewController.swift
//  SwiftProtocolOverExtension
//
//  Created by Sanjeev Gautam on 22/11/20.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addRightBarButtonByExtenstion(title: "Button By Extension")
        
        self.title = "ViewsController"
    }

    @objc override func rightBarButtonActionFromExtenstion() {
        print("in rightBarButtonAction From Extenstion called")
        
        if let nextVC = self.storyboard?.instantiateViewController(identifier: "NextViewController") as? SecondViewController {
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}

