//
//  File.swift
//  
//
//  Created by Yusuf Uzan on 16.04.2023.
//

import UIKit

public extension UIControl {
  /**
   * A map of closures, mapped as [ instanceIdentifier : [ event : action ] ].
   */
  private static var _actionHandlers = [String:[UInt:((UIControl) -> Void)]]()
  
  /**
   * Retrieve the address for this UIControl as a String.
   */
  private func getAddressAsString() -> String {
    let addr = Unmanaged.passUnretained(self).toOpaque()
    return "\(addr)"
  }
  
  /**
   * Retrieve the handler associated with the specified event for this instance
   * if any exists, otherwise return nil.
   */
  private func getHandler(_ event: UIControl.Event) -> ((UIControl) -> Void)? {
    return UIControl._actionHandlers[
      self.getAddressAsString()
    ]?[event.rawValue]
  }
  
  /**
   * Set the action for the specified event.
   *
   * - parameter event: The event for which to set the action.
   * - parameter action: The action to perform when the event is raised.
   */
  @discardableResult
  func action(_ event: UIControl.Event = .touchUpInside, _ action:@escaping (UIControl) -> Void) -> Self {
    let id = self.getAddressAsString()
    if UIControl._actionHandlers[id] == nil {
      UIControl._actionHandlers[id] = [UInt:((UIControl) -> Void)]()
    }
    
    UIControl._actionHandlers[id]?[event.rawValue] = action
    
    switch event {
      case .touchDown:
        self.addTarget(self, action: #selector(triggerTouchDown), for: event)
      case .touchDownRepeat:
        self.addTarget(self, action: #selector(triggerTouchDownRepeat), for: event)
      case .touchDragInside:
        self.addTarget(self, action: #selector(triggerTouchDragInside), for: event)
      case .touchDragOutside:
        self.addTarget(self, action: #selector(triggerTouchDragOutside), for: event)
      case .touchDragEnter:
        self.addTarget(self, action: #selector(triggerTouchDragEnter), for: event)
      case .touchDragExit:
        self.addTarget(self, action: #selector(triggerTouchDragExit), for: event)
      case .touchUpInside:
        self.addTarget(self, action: #selector(triggerTouchUpInside), for: event)
        return self
      case .touchUpOutside:
        self.addTarget(self, action: #selector(triggerTouchUpOutside), for: event)
      case .touchCancel:
        self.addTarget(self, action: #selector(triggerTouchCancel), for: event)
      case .valueChanged:
        self.addTarget(self, action: #selector(triggerValueChanged), for: event)
      case .primaryActionTriggered:
        self.addTarget(self, action: #selector(triggerPrimaryActionTriggered), for: event)
      case .editingDidBegin:
        self.addTarget(self, action: #selector(triggerEditingDidBegin), for: event)
      case .editingDidEnd:
        self.addTarget(self, action: #selector(triggerEditingDidEnd), for: event)
      case .editingChanged:
        self.addTarget(self, action: #selector(triggerEditingChanged), for: event)
      case .editingDidEndOnExit:
        self.addTarget(self, action: #selector(triggerEditingDidEndOnExit), for: event)
      case .allTouchEvents:
        self.addTarget(self, action: #selector(triggerAllTouchEvents), for: event)
      case .allEditingEvents:
        self.addTarget(self, action: #selector(triggerAllEditingEvents), for: event)
      case .applicationReserved:
        self.addTarget(self, action: #selector(triggerApplicationReserved), for: event)
      case .systemReserved:
        self.addTarget(self, action: #selector(triggerSystemReserved), for: event)
      case .allEvents:
        self.addTarget(self, action: #selector(triggerAllEvents), for: event)
      default:
        break
    }
    return self
  }
  
  // selector definitions below this line
  
  @objc private func triggerTouchDown() {
    getHandler(.touchDown)?(self)
  }
  
  @objc private func triggerTouchDownRepeat() {
    getHandler(.touchDownRepeat)?(self)
  }
  
  @objc private func triggerTouchDragInside() {
    getHandler(.touchDragInside)?(self)
  }
  
  @objc private func triggerTouchDragOutside() {
    getHandler(.touchDragOutside)?(self)
  }
  
  @objc private func triggerTouchDragEnter() {
    getHandler(.touchDragEnter)?(self)
  }
  
  @objc private func triggerTouchDragExit() {
    getHandler(.touchDragExit)?(self)
  }
  
  @objc private func triggerTouchUpInside() {
    getHandler(.touchUpInside)?(self)
  }
  
  @objc private func triggerTouchUpOutside() {
    getHandler(.touchUpOutside)?(self)
  }
  
  @objc private func triggerTouchCancel() {
    getHandler(.touchCancel)?(self)
  }
  
  @objc private func triggerValueChanged() {
    getHandler(.valueChanged)?(self)
  }
  
  @objc private func triggerPrimaryActionTriggered() {
    getHandler(.primaryActionTriggered)?(self)
  }
  
  @objc private func triggerEditingDidBegin() {
    getHandler(.editingDidBegin)?(self)
  }
  
  @objc private func triggerEditingChanged() {
    getHandler(.editingChanged)?(self)
  }
  
  @objc private func triggerEditingDidEnd() {
    getHandler(.editingDidEnd)?(self)
  }
  
  @objc private func triggerEditingDidEndOnExit() {
    getHandler(.editingDidEndOnExit)?(self)
  }
  
  @objc private func triggerAllTouchEvents() {
    getHandler(.allTouchEvents)?(self)
  }
  
  @objc private func triggerAllEditingEvents() {
    getHandler(.allEditingEvents)?(self)
  }
  
  @objc private func triggerApplicationReserved() {
    getHandler(.applicationReserved)?(self)
  }
  
  @objc private func triggerSystemReserved() {
    getHandler(.systemReserved)?(self)
  }
  
  @objc private func triggerAllEvents() {
    getHandler(.allEvents)?(self)
  }
}
