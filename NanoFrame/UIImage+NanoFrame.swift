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

public extension UIImage {

    class func imageWith(view: UIView) -> UIImage {
        imageWith(layer: view.layer)
    }

    class func imageWith(layer: CALayer) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, UIScreen.main.scale)

        if let context = UIGraphicsGetCurrentContext() {
            layer.render(in: context)
        }
        let out = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()
        return out!
    }

    func tint(_ color: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        let bounds = CGRect(x: 0, y: 0, width: size.width, height: size.height)

        color.setFill()

        UIRectFill(bounds)
        draw(in: bounds, blendMode: .destinationIn, alpha: 1.0)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image!
    }

}