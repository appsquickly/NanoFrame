////////////////////////////////////////////////////////////////////////////////
//
//  AppsQuick.ly
//  Copyright 2015 - 2020 AppsQuick.ly
//  All Rights Reserved.
//
//  NOTICE: Use is subject to license terms.
//
////////////////////////////////////////////////////////////////////////////////


import Foundation
import UIKit

public enum GradientDirection {
    case TopToBottom
    case LeftToRight
}

public extension UIColor {

    convenience init(hex: Int) {
        self.init(hex: hex, alpha: 1)
    }

    convenience init(hex: Int, alpha: CGFloat) {
        let components = (
                R: CGFloat((hex >> 16) & 0xff) / 255,
                G: CGFloat((hex >> 08) & 0xff) / 255,
                B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: alpha)
    }

    convenience init(gradient: [UIColor], direction: GradientDirection = .TopToBottom, inFrame: CGRect) {

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = inFrame
        gradientLayer.colors = gradient.map({ $0.cgColor })

        if direction == .LeftToRight {
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        }

        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        self.init(patternImage: image!)
    }


    convenience init(topToBottom: [UIColor], inFrame: CGRect) {
        self.init(gradient: topToBottom, direction: .TopToBottom, inFrame: inFrame)
    }

    convenience init(leftToRight: [UIColor], inFrame: CGRect) {
        self.init(gradient: leftToRight, direction: .LeftToRight, inFrame: inFrame)
    }

}