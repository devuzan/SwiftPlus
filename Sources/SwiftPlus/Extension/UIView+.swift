//
//  File.swift
//  
//
//  Created by Yusuf Uzan on 9.01.2023.
//

import UIKit

extension UIView {
  
  func pin(to: UILayoutGuide, insets: UIEdgeInsets)  {
    guard let _ = superview else {
      return
    }
    translatesAutoresizingMaskIntoConstraints = false
    topAnchor.constraint(equalTo: to.topAnchor, constant: insets.top).isActive = true
    bottomAnchor.constraint(equalTo: to.bottomAnchor, constant: -insets.bottom).isActive = true
    leftAnchor.constraint(equalTo: to.leftAnchor, constant: insets.left).isActive = true
    rightAnchor.constraint(equalTo: to.rightAnchor, constant: -insets.right).isActive = true
  }
  
  func pin(to: UIView, insets: UIEdgeInsets)  {
    guard let _ = superview else {
      return
    }
    
    translatesAutoresizingMaskIntoConstraints = false
    topAnchor.constraint(equalTo: to.topAnchor, constant: insets.top).isActive = true
    bottomAnchor.constraint(equalTo: to.bottomAnchor, constant: -insets.bottom).isActive = true
    leftAnchor.constraint(equalTo: to.leftAnchor, constant: insets.left).isActive = true
    rightAnchor.constraint(equalTo: to.rightAnchor, constant: -insets.right).isActive = true
  }
  
}
