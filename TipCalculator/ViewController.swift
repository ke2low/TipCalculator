//
//  ViewController.swift
//  TipCalculator
//
//  Created by Kalvin Low on 2020-08-26.
//  Copyright © 2020 Kalvin Low. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var doubleSplitLabel: UILabel!
    @IBOutlet weak var tripleSplitLabel: UILabel!
    @IBOutlet weak var quadrupleSplitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billField.becomeFirstResponder()
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let doubleBillSplit = total / 2
        let tripleBillSplit = total / 3
        let quadrupleBillSplit = total / 4
        
        //Update the tip and total labels
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        doubleSplitLabel.text = String(format: "$%.2f", doubleBillSplit)
        tripleSplitLabel.text = String(format: "$%.2f", tripleBillSplit)
        quadrupleSplitLabel.text = String(format: "$%.2f", quadrupleBillSplit)
        
    }
    
    
    
    
}

