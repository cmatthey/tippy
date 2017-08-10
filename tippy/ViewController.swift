//
//  ViewController.swift
//  tippy
//
//  Created by Coco Matthey on 8/8/17.
//  Copyright © 2017 Coco Matthey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.    }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let percentage = defaults.float(forKey: "defaultPercentage")
        print(String(format: "percentage: %f", percentage))
        if (percentage != nil) {
            switch percentage {
            case 0.20:
                tipControl.selectedSegmentIndex = 1
            case 0.25:
                tipControl.selectedSegmentIndex = 2
            default:
                tipControl.selectedSegmentIndex = 0
            }
            print(String(format: "percentage: %f", percentage))
            print(String(format: "selectedSegmentIndex: %d", tipControl.selectedSegmentIndex))
        }
        billField.text = ""
        tipLabel.text = ""
        totalLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)    }
}

