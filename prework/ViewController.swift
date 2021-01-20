//
//  ViewController.swift
//  prework
//
//  Created by Sujay kandwal on 1/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Gets the bill amount from user
        let bill = Double(billAmountTextField.text!) ?? 0
        //Calculates tip and total
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Updates tip label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Updates total label
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

