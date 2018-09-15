//
//  SecondViewController.swift
//  Birthday Note Taker
//
//  Created by Tuan Le Quoc  on 9/14/18.
//  Copyright © 2018 NGUYEN THE ANH. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
     var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = "Your name is: \(userName)"

        
    }
    @IBAction func backButtonClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func showAlertClick(_ sender: Any) {
        let alert  = UIAlertController(title: "Did you bring your towel?", message: "It's recome ten ten ten", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}
