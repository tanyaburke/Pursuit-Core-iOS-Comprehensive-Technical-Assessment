//
//  UIViewController+Extension.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/18/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit

extension UIViewController {
  
    public func showAlert(title: String?, message: String?) {
        let alertController  = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction =  UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
  
}
