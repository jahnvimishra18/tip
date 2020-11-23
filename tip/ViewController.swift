//
//  ViewController.swift
//  tip
//
//  Created by Jahnvi Mishra on 21/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
   @IBOutlet weak var totalAmountLabel: UILabel!
   
   @IBOutlet weak var tipAmountLabel: UILabel!
   override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18, 0.2]
        let tip = bill * tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
        let total = bill+tip
        tipAmountLabel.text = String(format: "%.2f", tip)
        totalAmountLabel.text = String(format: "%.2f", total)
    }
    
    
}

