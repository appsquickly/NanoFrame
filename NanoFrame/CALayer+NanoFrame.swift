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

public extension CALayer {

    class func with(image: UIImage) -> CALayer {
        let layer = CALayer()
        layer.frame = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
        layer.contents = image.cgImage
        return layer
    }

}