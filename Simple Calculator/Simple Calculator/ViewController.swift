//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Tuan Le Quoc  on 9/7/18.
//  Copyright © 2018 NGUYEN THE ANH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etNumberA: UITextField!
    
    @IBOutlet weak var etNumberB: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    var calculatorUtils = CalculatorUtils()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblResult.text = "Result is: "
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plusClick(_ sender: Any) {
        let numberA = Int(etNumberA.text!)
        let numberB = Int(etNumberB.text!)
        
        let result = calculatorUtils.cong(a: numberA!, b: numberB!)
        lblResult.text = String(result)
        
    }
    
    
    @IBAction func truClick(_ sender: Any) {
        
    }
    
    @IBAction func nhanClick(_ sender: Any) {
        if let firstNumber = Int(etNumberA.text!) {
            if let secondNumber = Int(etNumberB.text!) {
                let result = firstNumber * secondNumber
                lblResult.text = "Result is: \(String(result))"
            }
        }
    }
    
    @IBAction func chiaClick(_ sender: Any) {
    }
    
    @IBAction func phanTramClick(_ sender: Any) {
    }
    
}

