//
//  GradientView.swift
//  SwiftSample
//
//  Created by Stant 02 on 26/04/18.
//  Copyright © 2018 Stant 02. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.white {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer           =  CAGradientLayer()
        gradientLayer.colors        = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint    = CGPoint(x: 0.5, y: 0.5)
        gradientLayer.endPoint      = CGPoint(x: 0.5, y: 1)
        gradientLayer.frame         = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }    
}

