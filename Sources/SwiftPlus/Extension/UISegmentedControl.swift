//
//  File.swift
//  
//
//  Created by Yusuf Uzan on 9.01.2023.
//

import UIKit

extension UISegmentedControl {
  
  @discardableResult func setSegmentTitles(_ titles: [String]) -> Self {
    for index in 0..<titles.count {
      let title = titles[index]
      insertSegment(withTitle: title, at: index, animated: false)
    }
    return self
  }
  
}
