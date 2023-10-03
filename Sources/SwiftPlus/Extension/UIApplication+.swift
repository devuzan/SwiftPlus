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
  
  struct Constants {
    static let CFBundleShortVersionString = "CFBundleShortVersionString"
  }
  class func appVersion() -> String {
    Bundle.main.object(forInfoDictionaryKey: Constants.CFBundleShortVersionString) as! String
  }
  class func appBuild() -> String {
    Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
  }
  
  class func version() -> String {
    let version = appVersion(), build = appBuild()
    return "v\(version) - (\(build))"
  }
  
}
