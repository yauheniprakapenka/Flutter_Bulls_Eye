//
//  HideKeyboard.swift
//  cars
//
//  Created by yauheni prakapenka on 29/10/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
