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

public extension UIView {

    var position: CGPoint {
        get {
            frame.origin
        }
        set (value) {
            center = CGPoint(x: value.x + bounds.size.width / 2.0, y: value.y + bounds.size.height / 2.0)
        }
    }

    var x: CGFloat {
        get {
            frame.origin.x
        }
        set (value) {
            frame = CGRect(x: value, y: y, width: bounds.size.width, height: bounds.size.height)
        }
    }

    var y: CGFloat {
        get {
            frame.origin.y;
        }
        set (value) {
            frame = CGRect(x: x, y: value, width: self.bounds.size.width, height: self.bounds.size.height)
        }
    }

    var right: CGFloat {
        get {
            frame.maxX;
        }
        set (newValue) {
            center = CGPoint(x: newValue - bounds.size.width / 2.0, y: center.y)
        }
    }

    var bottom: CGFloat {
        get {
            frame.maxY;
        }
        set (newValue) {
            center = CGPoint(x: center.x, y: bounds.size.height / 2.0)
        }
    }

    var size: CGSize {
        get {
            bounds.size
        }
        set (value) {
            bounds.size = value;
        }

    }

    var width: CGFloat {
        get {
            bounds.size.width
        }
        set (value) {
            bounds.size.width = value
        }
    }

    var height: CGFloat {
        get {
            bounds.size.height
        }
        set (value) {
            bounds.size.height = value
        }
    }

    func center(in rect: CGRect) {
        centerHorizontally(in: rect)
        centerVertically(in: rect)
    }

    func centerVertically(in rect: CGRect) {
        y = rect.origin.y + (rect.size.height - bounds.size.height) / 2.0;
    }

    func centerHorizontally(in rect: CGRect) {
        x = rect.origin.x + (rect.size.width - bounds.size.width) / 2.0;
    }

    func centerInSuperView() {
        center = CGPoint(x: superview!.bounds.size.width / 2.0, y: superview!.bounds.size.height / 2.0)
    }

    func centerVerticallyInSuperView() {
        y = (superview!.bounds.size.height - bounds.size.height) / 2.0;
    }

    func centerHorizontallyInSuperView() {
        x = (superview!.bounds.size.width - bounds.size.width) / 2.0;
    }

    func centerHorizontally(below view: UIView, padding: CGFloat = 0.0) {
        y = view.frame.maxY + padding;
        x = view.x + (view.bounds.size.width - bounds.size.width) / 2.0;
    }

    func alignLeftHorizontally(below view: UIView, padding: CGFloat = 0.0) {
        y = view.frame.maxY + padding;
        x = view.x;
    }

    func alignRightHorizontally(below view: UIView, padding: CGFloat = 0.0) {
        y = view.frame.maxY + padding;
        right = view.right;
    }

}