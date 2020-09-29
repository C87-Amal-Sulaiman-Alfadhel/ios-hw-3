//
//  ViewController.swift
//  ios
//
//  Created by Amal Alfadhel on 9/26/20.
//  Copyright © 2020 Amal Alfadhel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BMICalculatorLabel: UILabel!
    @IBOutlet weak var BMIResultsLabel: UILabel!
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var StatusResultsLabel: UILabel!
    @IBOutlet weak var StatusLabel: UILabel!
    
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    
    let BackgroundColourSource = backgroundColourSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: Any) {
        let newColor = BackgroundColourSource.randomColor()
        
        view.backgroundColor = newColor
        
        var weight = 0.0
        var height = 0.0
        if let h =
            Double(heightField.text!){
            height = h
    }
        if let w =
            Double(weightField.text!){
            weight = w
    }
        let bmiCalculator =
        (weight / (height * height))
        BMIResultsLabel.text = String(format: "%.2f", bmiCalculator)
        
        if bmiCalculator < 20 {
            StatusResultsLabel.text = String("😐ضعيف")
    }
        else if bmiCalculator < 25 {
            StatusResultsLabel.text = String("😃جيد")
        }
        else if bmiCalculator > 25 {
            StatusResultsLabel.text = String ("😬سمين")
        }
        else {
            StatusResultsLabel.text = String ("❌خطأ")
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}


