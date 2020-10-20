//
//  KeyboardAnimationNotificationPayload.swift
//  ExtendedUIKit
//
//  Created by JBR on 30/01/2019.
//  Copyright © 2019 Jérémy Brault. All rights reserved.
//

import Foundation
import UIKit

public struct KeyboardAnimationNotificationPayload {

    // MARK: - Properties

    public let beginFrame: CGRect
    public let endFrame: CGRect
    public let curve: UIView.AnimationCurve
    public let duration: TimeInterval
    public let isLocal: Bool

    // MARK: - Init

    init(notification: Notification) {
        guard let userInfo = notification.userInfo,
            let beginFrame = userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? CGRect,
            let endFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect,
            let curve = UIView.AnimationCurve(rawValue: userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as? Int ?? 0),
            let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval,
            let isLocal = userInfo[UIResponder.keyboardIsLocalUserInfoKey] as? Bool else {

                fatalError("Could not map Notification \(notification) to KeyboardAnimationNotificationPayload.")
        }

        self.beginFrame = beginFrame
        self.endFrame = endFrame
        self.curve = curve
        self.duration = duration
        self.isLocal = isLocal
    }
}
