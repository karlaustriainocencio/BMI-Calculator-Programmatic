//
//  BCButton.swift
//  BMI_Calculator-ProgrammaticUI
//
//  Created by Karl Inocencio on 4/27/20.
//  Copyright © 2020 Karl Inocencio. All rights reserved.
//

import UIKit

class BCButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure() {
        layer.cornerRadius  = 8
        titleLabel?.font    = .systemFont(ofSize: 18, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
