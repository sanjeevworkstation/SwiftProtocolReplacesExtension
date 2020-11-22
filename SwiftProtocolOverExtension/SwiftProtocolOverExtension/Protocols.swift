//
//  Protocols.swift
//  SwiftProtocolOverExtension
//
//  Created by Sanjeev Gautam on 22/11/20.
//

import Foundation
import UIKit

@objc protocol ViewControllerProtocols {
    func rightBarButtonByProtocolAction()
}

extension ViewControllerProtocols where Self: UIViewController {
    func addRightBarButtonByProtocol(title: String) {
        let leftButton: UIButton = UIButton(type: .custom)
        leftButton.setTitle(title, for: .normal)
        leftButton.setTitleColor(.blue, for: .normal)
        leftButton.addTarget(self, action: #selector(rightBarButtonByProtocolAction), for: .touchUpInside)

        let leftBarButton = UIBarButtonItem(customView: leftButton)
        self.navigationItem.rightBarButtonItem = leftBarButton
    }
}
