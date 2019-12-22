//
//  ContentView.swift
//  TipCalculator
//
//  Created by Dylan Zhang on 12/21/19.
//  Copyright © 2019 Dylan Zhang. All rights reserved.
//

import UIKit
class ContentView: UIViewController{
    
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBAction func calculatepressed(sender: UIButton){
        calculateTip()
    }
    
    
    @IBAction func sliderChanged(sender: UISlider){
        tipPercentageLabel.text! = "Tip Percentage" + String(Int(sender.value)) + "%"
        calculateTip()
    }
    
    
    func calculateTip(){
        
        
        
//       let tipAmount = Float(billAmountField.text!)! * tipSlider.value / 100
//        let total = tipAmount + Float(billAmountField.text!)!
//        tipAmountLabel.text! = String(tipAmount)
//        totalLabel.text! = String(total)
        
        var tipAmount = Float()
        var total = Float()
        if let billAmount = Float(billAmountField.text!){
            tipAmount = billAmount * tipSlider.value / 100
            total = tipAmount + billAmount
        }else{
            tipAmount = 0
            total = 0
        }
        tipAmountLabel.text! = String(tipAmount)
        totalLabel.text! = String(total)
    }
}
