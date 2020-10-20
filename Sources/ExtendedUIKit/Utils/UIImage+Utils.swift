//
//  UIImage+Utils.swift
//  ExtendedUIKit
//
//  Created by JBR on 11/12/2019.
//  Copyright © 2019 Jérémy Brault. All rights reserved.
//

import Foundation
import UIKit

public extension UIImage {

    static func from(color: UIColor) -> UIImage? {
        defer { UIGraphicsEndImageContext() }

        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)

        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()

        return image
    }
}
