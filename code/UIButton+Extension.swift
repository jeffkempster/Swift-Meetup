//
//  UIButton+Extension.swift
//  Meetup UI
//
//  Created by Jeffrey P. Kempster on 1/16/18.
//  Copyright © 2018 Jeffrey P. Kempster. All rights reserved.
//

import UIKit

// Make sure clips to bounds is set in Storyboard

@IBDesignable extension UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
}



