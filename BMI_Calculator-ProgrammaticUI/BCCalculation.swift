//
//  BCCalculation.swift
//  BMI_Calculator-ProgrammaticUI
//
//  Created by Karl Inocencio on 4/28/20.
//  Copyright © 2020 Karl Inocencio. All rights reserved.
//

import UIKit

struct BCCalculation {
    
    var BMI: BCBMI?
    
    func getBMIValue() -> String {
        let bmiCalculation = String(format: "%.1f", BMI?.value ?? 0.0)
        return bmiCalculation
    }
    
    
    func getAdvice() -> String {
        return BMI?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return BMI?.color ?? UIColor.systemBackground
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let BMIvalue = weight / pow(height, 2)
        
        if BMIvalue < 18.5 {
            BMI = BCBMI(value: BMIvalue, advice: "You're Underweight!", color: .systemYellow)
        } else if BMIvalue < 24.9 {
            BMI = BCBMI(value: BMIvalue, advice: "You're Healthy!", color: .systemGreen)
        } else {
            BMI = BCBMI(value: BMIvalue, advice: "You're Overweight!", color: .systemRed)
        }
    }

}
 
