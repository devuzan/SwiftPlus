//
//  UIButton+.swift
//  
//
//  Created by Yusuf Uzan on 17.04.2023.
//

import UIKit

public extension UIButton {
  
  typealias Action = () -> Void
  
  var onTap: Action? {
    get {
      associatedObject(for: "onTapAction") as? Action
    }
    set {
      set(associatedObject: newValue, for: "onTapAction")
    }
  }
  
  @discardableResult
  func onTap(_ action: @escaping Action) -> Self {
    self.onTap = action
    addTarget(self, action: #selector(didTouchUpInside), for: .touchUpInside)
    return self
  }
  
  @objc func didTouchUpInside() {
    onTap?()
  }
  
  @discardableResult
  func cornerRadius(_ radius: CGFloat) -> Self {
    layer.cornerRadius = radius
    layer.masksToBounds = true
    return self
  }
  
}

