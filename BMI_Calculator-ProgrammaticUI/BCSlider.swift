//
//  BCSlider.swift
//  BMI_Calculator-ProgrammaticUI
//
//  Created by Karl Inocencio on 4/27/20.
//  Copyright © 2020 Karl Inocencio. All rights reserved.
//

import UIKit

class BCSlider: UISlider {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    func configure() {
        isContinuous    = true
        tintColor       = .systemRed
        thumbTintColor  = .systemRed
        translatesAutoresizingMaskIntoConstraints = false
    }

}
