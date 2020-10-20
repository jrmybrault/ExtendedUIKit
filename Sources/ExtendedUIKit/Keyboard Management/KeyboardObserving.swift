//
//  KeyboardObserving.swift
//  ExtendedUIKit
//
//  Created by JBR on 21/05/2019.
//  Copyright © 2019 Jérémy Brault. All rights reserved.
//

/*import ExtendedFoundation

public protocol KeyboardObserving: AnyObject {

    func keyboardWillShow(_ payload: KeyboardAnimationNotificationPayload)
    func keyboardWillHide(_ payload: KeyboardAnimationNotificationPayload)
}

extension KeyboardObserving {

    public func observeKeyboard() -> [NotificationCenterToken] {
        let notificationCenter: NotificationCenter = .default

        let keyboardWillShowDescriptor = NotificationDescriptor(name: UIResponder.keyboardWillShowNotification,
                                                                convert: KeyboardAnimationNotificationPayload.init)
        let willShowObservingToken = notificationCenter.addObserver(for: keyboardWillShowDescriptor) { [weak self] payload in
                self?.keyboardWillShow(payload)
        }

        let keyboardWillHideDescriptor = NotificationDescriptor(name: UIResponder.keyboardWillHideNotification,
                                                                convert: KeyboardAnimationNotificationPayload.init)
        let willHideObservingToken = notificationCenter.addObserver(for: keyboardWillHideDescriptor) { [weak self] payload in
                self?.keyboardWillHide(payload)
        }

        return [willShowObservingToken, willHideObservingToken]
    }
}

public protocol ScrollViewKeyboardObserving: KeyboardObserving {

    var keyboardObservingScrollView: UIScrollView { get }
}

extension ScrollViewKeyboardObserving {

    public func keyboardWillShow(_ payload: KeyboardAnimationNotificationPayload) {
        keyboardObservingScrollView.contentInset.bottom = payload.endFrame.size.height
        keyboardObservingScrollView.scrollIndicatorInsets.bottom = payload.endFrame.size.height
    }

    public func keyboardWillHide(_ payload: KeyboardAnimationNotificationPayload) {
        keyboardObservingScrollView.contentInset.bottom = 0
        keyboardObservingScrollView.scrollIndicatorInsets.bottom = 0
    }
}*/
