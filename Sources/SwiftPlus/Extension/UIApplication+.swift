//
//  UIApplication+.swift
//  
//
//  Created by Yusuf Uzan on 22.05.2023.
//

import UIKit

public extension UIApplication {
  
  func topMostViewController() -> UIViewController? {
    return UIWindow.key!.rootViewController?.topMostViewController()
  }
  
  class var topInset: CGFloat {
    UIApplication.shared.keyWindow?.safeAreaInsets.top ?? UIApplication.shared.statusBarFrame.size.height
  }

}
