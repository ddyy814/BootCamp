//
//  ViewController.swift
//  TipCalculator
//
//  Created by Dylan Zhang on 12/24/19.
//  Copyright © 2019 Dylan Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tpSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBAction func CalculatePressed(_ sender: UIButton) {
        calculateTip()
    }
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBAction func sliderChanged(_ sender: UISlider) {
        tipPercentageLabel.text! = "Tip Percentage " + String(Int(sender.value)) + "%"
    }
    
    func calculateTip(){
       var tipAmount = Float()
        var total = Float()
        if let billAmount = Float(billAmountField.text!){
            tipAmount = billAmount * tpSlider.value / 100
            total = tipAmount + billAmount
        }else{
            tipAmount = 0
            total = 0
        }
        tipAmountLabel.text! = String(tipAmount)
        totalLabel.text! = String(total)
    }
}


