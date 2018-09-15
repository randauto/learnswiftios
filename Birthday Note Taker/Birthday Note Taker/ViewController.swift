//
//  ViewController.swift
//  Birthday Note Taker
//
//  Created by Tuan Le Quoc  on 9/13/18.
//  Copyright © 2018 NGUYEN THE ANH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var etName: UITextField!
    @IBOutlet weak var etBirthday: UITextField!
    @IBOutlet weak var lblStoredName: UILabel!
    @IBOutlet weak var lblStoredBirthday: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    
   var name = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBirthday = UserDefaults.standard.object(forKey: "birthday")
        if let newName = storeName as? String {
            lblStoredName.text = "Stored Name: \(newName)"
        }
        
        if let newBirthday = storeBirthday as? String {
            lblStoredBirthday.text = "Stored Birthday: \(newBirthday)"
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "fromFirstToSecond") {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.userName = name
        }
    }
    
    

    @IBAction func onClickSave(_ sender: Any) {
        UserDefaults.standard.set(etName.text, forKey: "name")
        UserDefaults.standard.set(etBirthday.text, forKey: "birthday")
        UserDefaults.standard.synchronize()
        
        lblStoredName.text = "Stored Name: \(etName.text!)"
        lblStoredBirthday.text = "Stored Birthday: \(etBirthday.text!)"
    }
    
    @IBAction func onClickDelete(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "name1")
        UserDefaults.standard.removeObject(forKey: "birthday")
        UserDefaults.standard.synchronize()
    }
    
    
    @IBAction func gotoSecond(_ sender: Any) {
        performSegue(withIdentifier: "fromFirstToSecond", sender: nil)
    }
    
    @IBAction func saveGotoClick(_ sender: Any) {
        name = fullNameTextField.text!
        performSegue(withIdentifier: "fromFirstToSecond", sender: nil)
    }
    
}

