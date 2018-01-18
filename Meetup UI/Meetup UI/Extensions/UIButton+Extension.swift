//
//  UIButton+Extension.swift
//  Meetup UI
//
//  Created by Jeffrey P. Kempster on 1/16/18.
//  Copyright © 2018 Jeffrey P. Kempster. All rights reserved.
//

import UIKit

// NOTE: Make sure clips to bounds is set in Storboard

@IBDesignable extension UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }

}
