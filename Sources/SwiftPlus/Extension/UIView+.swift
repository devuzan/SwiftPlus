//
//  UIView+.swift
//  
//
//  Created by Yusuf Uzan on 9.01.2023.
//

import UIKit

public extension UIView {
  
  func pin(to: UILayoutGuide, insets: UIEdgeInsets = .zero)  {
    guard let _ = superview else {
      return
    }
    translatesAutoresizingMaskIntoConstraints = false
    topAnchor.constraint(equalTo: to.topAnchor, constant: insets.top).isActive = true
    bottomAnchor.constraint(equalTo: to.bottomAnchor, constant: -insets.bottom).isActive = true
    leftAnchor.constraint(equalTo: to.leftAnchor, constant: insets.left).isActive = true
    rightAnchor.constraint(equalTo: to.rightAnchor, constant: -insets.right).isActive = true
  }
  
  func pin(to: UIView, insets: UIEdgeInsets = .zero)  {
    guard let _ = superview else {
      return
    }
    translatesAutoresizingMaskIntoConstraints = false
    topAnchor.constraint(equalTo: to.topAnchor, constant: insets.top).isActive = true
    bottomAnchor.constraint(equalTo: to.bottomAnchor, constant: -insets.bottom).isActive = true
    leadingAnchor.constraint(equalTo: to.leadingAnchor, constant: insets.left).isActive = true
    trailingAnchor.constraint(equalTo: to.trailingAnchor, constant: -insets.right).isActive = true
  }
  
  func addSubviews(autoLayoutIsEnable: Bool = true, _ subviews: UIView...) {
    subviews.forEach {
      $0.translatesAutoresizingMaskIntoConstraints = !autoLayoutIsEnable
      addSubview($0)
    }
  }
  
  func roundCorners(corners: UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    layer.mask = mask
  }
  
  func addTopShadow(shadowColor : UIColor, shadowOpacity : CGFloat, shadowRadius : CGFloat, offset:CGSize){
    self.layer.shadowColor = shadowColor.cgColor
    self.layer.shadowOffset = offset
    self.layer.shadowOpacity = Float(shadowOpacity)
    self.layer.shadowRadius = shadowRadius
    self.clipsToBounds = false
  }

}
