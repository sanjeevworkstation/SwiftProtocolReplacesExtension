//
//  Extensions.swift
//  SwiftProtocolOverExtension
//
//  Created by Sanjeev Gautam on 22/11/20.
//

import Foundation
import UIKit

extension UIViewController {
    func addRightBarButtonByExtenstion(title: String) {
        let leftButton: UIButton = UIButton(type: .custom)
        leftButton.setTitle(title, for: .normal)
        leftButton.setTitleColor(.blue, for: .normal)
        leftButton.addTarget(self, action: #selector(rightBarButtonByExtenstionAction), for: .touchUpInside)

        let leftBarButton = UIBarButtonItem(customView: leftButton)
        self.navigationItem.rightBarButtonItem = leftBarButton
    }
    
    @objc func rightBarButtonByExtenstionAction() { }
}
