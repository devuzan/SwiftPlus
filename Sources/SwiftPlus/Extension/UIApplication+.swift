//
//  UIApplication+.swift
//  
//
//  Created by Yusuf Uzan on 22.05.2023.
//

import UIKit

extension UIApplication {
  
  func topMostViewController() -> UIViewController? {
    return UIWindow.key!.rootViewController?.topMostViewController()
  }
  
}
