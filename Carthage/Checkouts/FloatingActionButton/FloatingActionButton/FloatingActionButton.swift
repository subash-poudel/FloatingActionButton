//
//  FloatingActionButton.swift
//  FloatingActionButton
//
//  Created by Subash Poudel on 8/30/19.
//  Copyright © 2019 Subash Poudel. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class FloatingActionButton: UIButton {
    
    @IBInspectable var buttonBackgroundColor: UIColor = UIColor.red {
        didSet {
            self.backgroundColor = buttonBackgroundColor;
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 5, height: 5) {
        didSet {
            self.layer.shadowOffset = shadowOffset;
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.25 {
        didSet {
            self.layer.shadowOpacity = shadowOpacity;
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 5 {
        didSet {
            self.layer.shadowRadius = shadowRadius;
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // init frame required for IBDesignable to work
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
        setup()
    }
    
    private func setup() {
        let cornerRadius = (frame.width > frame.height ? frame.height: frame.width) / 2
        layer.cornerRadius = cornerRadius
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        backgroundColor = buttonBackgroundColor
    }
    
}
