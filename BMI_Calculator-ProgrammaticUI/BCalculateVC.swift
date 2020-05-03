//
//  BCalculateVC.swift
//  BMI_Calculator-ProgrammaticUI
//
//  Created by Karl Inocencio on 4/25/20.
//  Copyright © 2020 Karl Inocencio. All rights reserved.
//

import UIKit

class BCalculateVC: UIViewController {
    
    var BMICalculation   = BCCalculation()
    var bmiValue         = "0.0"
    
    let calcButton       = BCButton(backgroundColor: .systemRed, title: "Calculate")
    let heightSlider     = BCSlider()
    let weightSlider     = BCSlider()
    let heightLabel      = BCLabel()
    let heightLabelValue = BCLabel()
    let weightLabel      = BCLabel()
    let weightLabelValue = BCLabel()
    let bmiTitleLabel    = BCLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureCalculateButton()
        configureWeightSlider()
        configureWeightLabel()
        configureWeightLabelValue()
        configureHeightSlider()
        configureHeightLabelValue()
        configureHeightLabel()
        configureBMITitleLabel()
    
    }
       
    
    func configureCalculateButton() {
        view.addSubview(calcButton)
        calcButton.addTarget(self, action: #selector(calculateBMI), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            calcButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            calcButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            calcButton.heightAnchor.constraint(equalToConstant: 50),
            calcButton.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -60)
        ])
    }
    
    @objc func calculateBMI() {
        let height = heightSlider.value
        let weight = weightSlider.value
        BMICalculation.calculateBMI(height: height, weight: weight)
        
        configureCalculatedBMIValue()
    }
    
    
    func configureCalculatedBMIValue() {
        let BMIResult       = BCResultVC()
        BMIResult.bmiValue  = BMICalculation.getBMIValue()
        BMIResult.advice    = BMICalculation.getAdvice()
        BMIResult.color     = BMICalculation.getColor()
        navigationController?.pushViewController(BMIResult, animated: true)
    }
    
    
    func configureWeightSlider() {
        view.addSubview(weightSlider)
        weightSlider.minimumValue   = 0
        weightSlider.maximumValue   = 200
        weightSlider.value          = 100
        weightSlider.addTarget(self, action: #selector(weightSliderValue), for: UIControl.Event.valueChanged)
        
        NSLayoutConstraint.activate([
            weightSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            weightSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            weightSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weightSlider.bottomAnchor.constraint(equalTo: calcButton.topAnchor, constant: -30)
        ])
    }
    
    @objc func weightSliderValue(sender: UISlider) {
        weightLabelValue.text = String(format: "%.0fKg", sender.value)
    }
    
    
    func configureWeightLabel() {
        view.addSubview(weightLabel)
        weightLabel.text = "Weight"
        weightLabel.textAlignment = .left
        
        NSLayoutConstraint.activate([
            weightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            weightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            weightLabel.bottomAnchor.constraint(equalTo: weightSlider.topAnchor, constant: -30)
        ])
    }
    
    
    func configureHeightSlider() {
        view.addSubview(heightSlider)
        heightSlider.minimumValue   = 0
        heightSlider.maximumValue   = 3
        heightSlider.value          = 1.5
        heightSlider.addTarget(self, action: #selector(heightSliderValue), for: UIControl.Event.valueChanged)
        
        NSLayoutConstraint.activate([
            heightSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            heightSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            heightSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            heightSlider.bottomAnchor.constraint(equalTo: weightLabel.topAnchor, constant: -30)
        ])
    }
    
    
    @objc func heightSliderValue(sender: UISlider) {
           heightLabelValue.text = String(format: "%.2fm", sender.value)
       }
    
    
    func configureHeightLabel() {
        view.addSubview(heightLabel)
        heightLabel.text            = "Height"
        heightLabel.textAlignment   = .left
        
        NSLayoutConstraint.activate([
            heightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            heightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            heightLabel.bottomAnchor.constraint(equalTo: heightSlider.topAnchor, constant: -30)
        ])
    }
    
    
    func configureWeightLabelValue() {
        view.addSubview(weightLabelValue)
        weightLabelValue.text           = "100Kg"
        weightLabelValue.textAlignment  = .right
        
        NSLayoutConstraint.activate([
            //weightLabelValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            weightLabelValue.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            //weightLabelValue.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weightLabelValue.bottomAnchor.constraint(equalTo: weightSlider.topAnchor, constant: -30)
            
        ])
    }
    
    
    func configureHeightLabelValue() {
        view.addSubview(heightLabelValue)
        heightLabelValue.text           = "1.5m"
        heightLabelValue.textAlignment  = .right
        
        NSLayoutConstraint.activate([
            heightLabelValue.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            heightLabelValue.bottomAnchor.constraint(equalTo: heightSlider.topAnchor, constant: -30)
        ])
    }
    
    
    func configureBMITitleLabel() {
        view.addSubview(bmiTitleLabel)
        bmiTitleLabel.text                  = "CALCULATE YOUR BMI"
        bmiTitleLabel.textAlignment         = .center
        bmiTitleLabel.baselineAdjustment    = .alignBaselines
        bmiTitleLabel.lineBreakMode         = .byTruncatingTail
        bmiTitleLabel.numberOfLines         = 0
        bmiTitleLabel.font                  = UIFont.boldSystemFont(ofSize: 40)
        
        NSLayoutConstraint.activate([
            bmiTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            bmiTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            bmiTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bmiTitleLabel.bottomAnchor.constraint(equalTo: heightLabel.topAnchor, constant: -180)
        ])
    }
}
