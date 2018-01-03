//
//  ViewController.swift
//  tippy
//
//  Created by Mitul Savani on 12/31/17.
//  Copyright © 2017 Mitul Savani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var bilField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var taxField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any)
    {
        let tipPercent = [0.18 , 0.20 , 0.25]
        
        let bill = Double(bilField.text!) ?? 0
        let tax = Double(taxField.text!) ?? 0
        
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let totalTaxAmount = bill * (tax*0.01)
        let total = bill + tip + totalTaxAmount
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

