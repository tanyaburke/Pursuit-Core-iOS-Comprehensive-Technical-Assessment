//
//  UIViewController+Navigation.swift
//  
//
//  Created by Tanya Burke on 3/17/20.
//

import UIKit

extension UIViewController {
  
  private static func resetWindow(with rootViewController: UIViewController) {
    guard let scene = UIApplication.shared.connectedScenes.first,
      let sceneDelegate = scene.delegate as? SceneDelegate,
      let window = sceneDelegate.window else {
        fatalError("could not reset window rootViewController")
    }
    window.rootViewController = rootViewController
  }
  
  public static func showViewController(storyBoardName: String, viewControllerId: String) {
    let storyboard = UIStoryboard(name: storyBoardName, bundle: nil)
    let newVC = storyboard.instantiateViewController(identifier: viewControllerId)
    resetWindow(with: newVC)
  }
  
}
