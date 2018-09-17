//
//  ThreeViewController.swift
//  Birthday Note Taker
//
//  Created by Tuan Le Quoc  on 9/15/18.
//  Copyright © 2018 NGUYEN THE ANH. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {
    @IBOutlet weak var lblTimer: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        lblTimer.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ThreeViewController.timerFunction), userInfo: nil, repeats: true)
        }
    
    @objc func timerFunction() {
        
        lblTimer.text = String(counter)
        if counter > 0 {
            counter = counter - 1
        } else {
            timer.invalidate()
            lblTimer.text = "Done!"
        }
        
        print("Timer is running")
    }

}
