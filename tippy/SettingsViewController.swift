//
//  SettingsViewController.swift
//  tippy
//
//  Created by Coco Matthey on 8/9/17.
//  Copyright © 2017 Coco Matthey. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTo15(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(0.18, forKey: "defaultPercentage")
        defaults.synchronize()
        let percentage = defaults.float(forKey: "defaultPercentage")
        print(percentage)

    }
    
    @IBAction func defaultTo20(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(0.20, forKey: "defaultPercentage")
        defaults.synchronize()
        let percentage = defaults.float(forKey: "defaultPercentage")
        print(percentage)
    }

    @IBAction func defaultTo25(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(0.25, forKey: "defaultPercentage")
        defaults.synchronize()
        let percentage = defaults.float(forKey: "defaultPercentage")
        print(percentage)
    }
}
