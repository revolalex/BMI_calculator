//
//  ViewController.swift
//  BMI calcul
//
//  Created by alexandre rodriguez on 06/12/2019.
//  Copyright © 2019 alexandre rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func weightValueSet(_ sender: UISlider) {
        updateValues()
    }
    
    @IBAction func heightValueSet(_ sender: UISlider) {
        updateValues()
    }
    func updateValues() {
        let weight = weightSlider.value
        let height = heightSlider.value
        let bmi = weight / (height * height)
        weightLabel.text = "\(formatNumber(value: weight)) Kg"
        heightLabel.text = "\(formatNumber(value: height)) M"
        bmiLabel.text = "BMI = \(bmi)"
        
        
    switch bmi {
    case 0...18.5:
        categoryLabel.backgroundColor = UIColor.lightGray
        categoryLabel.text = "Underweight"
    case 18.5...24.9:
        categoryLabel.backgroundColor = UIColor.lightGray
        categoryLabel.text = "Healthy"
    case 24.9...29.9:
        categoryLabel.backgroundColor = UIColor.systemYellow
        categoryLabel.text = "Overweight"
    case 29.9...34.9:
        categoryLabel.backgroundColor = UIColor.systemOrange
        categoryLabel.text = "Severely Overweight"
    case 35...:
        categoryLabel.backgroundColor = UIColor.systemRed
        categoryLabel.text = "Morbidly Overweight"
    default:
        break
        }
}
    func formatNumber(value: Float) -> Double{
        return Double(String(format: "%.2f", value))!
    }

}

