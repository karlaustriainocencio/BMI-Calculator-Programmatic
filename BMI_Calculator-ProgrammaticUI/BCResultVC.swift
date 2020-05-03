//
//  BCResultVC.swift
//  BMI_Calculator-ProgrammaticUI
//
//  Created by Karl Inocencio on 4/29/20.
//  Copyright © 2020 Karl Inocencio. All rights reserved.
//

import UIKit

class BCResultVC: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    let bmiResultLabel  = BCLabel()
    let resultLabel     = BCLabel()
    let labelAdvice     = BCLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        configureResultLabel()
        configureBMIResult()
        configureAdvice()
    }
    
    
    func configureResultLabel() {
        view.addSubview(resultLabel)
        resultLabel.text            = "YOUR RESULT"
        resultLabel.textAlignment   = .center
        resultLabel.font            = UIFont.boldSystemFont(ofSize: 30)
        resultLabel.textColor       = .white
        
        NSLayoutConstraint.activate([
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resultLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200)
        ])
    }
    
    
    func configureBMIResult() {
        view.addSubview(bmiResultLabel)
        bmiResultLabel.text                 = bmiValue
        bmiResultLabel.textAlignment        = .center
        bmiResultLabel.baselineAdjustment   = .alignBaselines
        bmiResultLabel.lineBreakMode        = .byTruncatingTail
        bmiResultLabel.numberOfLines        = 0
        bmiResultLabel.font                 = UIFont.boldSystemFont(ofSize: 80)
        bmiResultLabel.textColor            = .white
        
        NSLayoutConstraint.activate([
            bmiResultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            bmiResultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            bmiResultLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 10)
        ])
    }
    
    
    func configureAdvice() {
        view.addSubview(labelAdvice)
        labelAdvice.text                = advice
        labelAdvice.textAlignment       = .center
        labelAdvice.baselineAdjustment  = .alignBaselines
        labelAdvice.lineBreakMode       = .byTruncatingTail
        labelAdvice.numberOfLines       = 0
        labelAdvice.font                = UIFont.boldSystemFont(ofSize: 30)
        labelAdvice.textColor           = .white
        
        NSLayoutConstraint.activate([
            labelAdvice.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelAdvice.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            labelAdvice.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelAdvice.topAnchor.constraint(equalTo: bmiResultLabel.bottomAnchor, constant: 10)
        ])
    }
}
