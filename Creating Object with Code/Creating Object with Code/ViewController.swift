//
//  ViewController.swift
//  Creating Object with Code
//
//  Created by Tuan Le Quoc  on 9/8/18.
//  Copyright © 2018 NGUYEN THE ANH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let myButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
         let myLabel = UILabel()
        myLabel.text = "My Coding label"
        myLabel.textAlignment = NSTextAlignment.center
        myLabel.textColor = UIColor.red
        myLabel.frame = CGRect(x: width * 0.1, y: height * 0.3, width: width * 0.8, height: 100)
        
        
        view.addSubview(myLabel)
        
        
        myButton.frame = CGRect(x: width * 0.2, y: height * 0.5, width: width * 0.6, height: 50)
        
        myButton.setTitle("My Coding Button", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(ViewController.myButtonClick), for: UIControlEvents.touchUpInside)
    }
    
    @objc func myButtonClick() {
        print("Click click click")
        self.myButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

