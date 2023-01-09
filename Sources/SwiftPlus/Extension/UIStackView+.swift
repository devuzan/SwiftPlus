//
//  UIStackView+.swift
//  
//
//  Created by Yusuf Uzan on 9.01.2023.
//

import UIKit

extension UIStackView {
  
  @discardableResult
  func horizontal(spacing: CGFloat = 0) -> Self {
    with {
      $0.axis = .horizontal
      $0.spacing = spacing
    }
  }
  
  @discardableResult
  func vertical(spacing: CGFloat = 0) -> Self {
    with {
      $0.axis = .vertical
      $0.spacing = spacing
    }
  }
  
  @discardableResult
  func views(_ views: UIView ...) -> Self {
    views.forEach { self.addArrangedSubview($0) }
    return self
  }
  
}


