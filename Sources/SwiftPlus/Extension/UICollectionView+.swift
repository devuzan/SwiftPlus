//
//  File.swift
//  
//
//  Created by Yusuf Uzan on 6.05.2023.
//

import UIKit

public extension UICollectionView {
  
  @discardableResult
  func registerCell(type: UICollectionViewCell.Type, identifier: String? = nil)  -> Self {
    register(type.self, forCellWithReuseIdentifier: type.className)
    return self
  }

  @discardableResult
  func dequeueCell<T: UICollectionViewCell>(withType type: UICollectionViewCell.Type, for indexPath: IndexPath) -> T? {
    return dequeueReusableCell(withReuseIdentifier: type.className, for: indexPath) as? T
  }
  
}

