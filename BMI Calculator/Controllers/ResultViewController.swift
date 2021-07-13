//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Danish on 13/07/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        if Float(bmiValue ?? "0") ?? 0 < 18.5{
            adviceLabel.text = "Eat More Pies"
        }else if Float(bmiValue ?? "0") ?? 0 < 24.9{
            adviceLabel.text = "Fit As Fiddle!"
        }else{
            adviceLabel.text = "Eat Less Pies !"

        }
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
