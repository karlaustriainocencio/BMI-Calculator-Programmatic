//
//  BCLabel.swift
//  BMI_Calculator-ProgrammaticUI
//
//  Created by Karl Inocencio on 4/27/20.
//  Copyright © 2020 Karl Inocencio. All rights reserved.
//

import UIKit

class BCLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        textColor   = .darkGray
        font        = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontForContentSizeCategory = true
    }
}
