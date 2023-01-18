//
//  File 2.swift
//  
//
//  Created by Yusuf Uzan on 18.01.2023.
//

import UIKit
/*

public struct AlertPayload {
  let style: UIAlertController.Style
  let title: String
  let message: String
  let actions: [AlertActionPayload]
}

public struct AlertActionPayload {
  let title: String
  let style: UIAlertAction.Style
  let handler: ((UIAlertAction) -> Void)?
}

public extension UIViewController {
  
  func showAlert(
    title: String,
    message: String,
    style: UIAlertController.Style? = .alert,
    okActionTitle: String = NSLocalizedString("OK", comment: ""),
    okActionHandler: ((UIAlertAction) -> Void)? = nil,
    okActionStyle: UIAlertAction.Style = .default,
    cancelTitle: String? = nil,
    cancelActionHandler: ((UIAlertAction) -> Void)? = nil,
    cancelActionStyle: UIAlertAction.Style = .cancel,
    animated: Bool = true) {
      let okAction = AlertActionPayload(title: okActionTitle , style: okActionStyle, handler: okActionHandler)
      var actions: [AlertActionPayload] = []
      var payload: AlertPayload
      if let cancelTitle = cancelTitle{
        let cancelAction = AlertActionPayload(title: cancelTitle, style: cancelActionStyle, handler: cancelActionHandler)
        actions.append(cancelAction)
      }
      actions.append(okAction)
      payload = AlertPayload(style: style ?? .alert, title: title, message: message, actions: actions)
      DispatchQueue.main.async {
        self.presentAlert(with: payload, animated: true)
      }
    }
  
  func presentAlert(with payload: AlertPayload, animated: Bool = true, completion: (() -> Void)? = nil) -> Void {
    let alertController = UIAlertController(title: payload.title, message: payload.message, preferredStyle: payload.style)
    payload.actions.map {
      UIAlertAction(title: $0.title, style: $0.style, handler: $0.handler)
    }
    .forEach { (action) in
      alertController.addAction(action)
    }
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) { [weak self] in
      self?.present(alertController, animated: animated, completion: completion)
    }
  }
  
}
*/
