//
//  ViewController.swift
//  Landmark Image Book
//
//  Created by Tuan Le Quoc  on 9/17/18.
//  Copyright © 2018 NGUYEN THE ANH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var tableNameArray = [String]()
    var tableImageArray = [UIImage]()
    
    var chooseLandmarkName = ""
    var chooseLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // setup tableview.
        tableView.delegate = self
        tableView.dataSource = self
        // setup data
        tableNameArray.append("Landmark 1")
        tableNameArray.append("Landmark 2")
        tableNameArray.append("Landmark 3")
        tableNameArray.append("Landmark 4")
        tableNameArray.append("Landmark 5")
        tableNameArray.append("Landmark 6")
        tableNameArray.append("Landmark 7")
        
        tableImageArray.append(UIImage(named: "landmark1.jpg")!)
        tableImageArray.append(UIImage(named: "landmark2.jpg")!)
        tableImageArray.append(UIImage(named: "landmark3.jpeg")!)
        tableImageArray.append(UIImage(named: "landmark4.jpeg")!)
        tableImageArray.append(UIImage(named: "landmark5.jpeg")!)
        tableImageArray.append(UIImage(named: "landmark6.jpg")!)
        tableImageArray.append(UIImage(named: "landmark7.jpeg")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = tableNameArray[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showdetail" {
            let detVC = segue.destination as! ImageViewController
            detVC.selectedLandmarkName = chooseLandmarkName
            detVC.selectedLandmarkImage = chooseLandmarkImage
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.chooseLandmarkName = tableNameArray[indexPath.row]
        self.chooseLandmarkImage = tableImageArray[indexPath.row]
        
        performSegue(withIdentifier: "showdetail", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableNameArray.remove(at: indexPath.row)
            tableImageArray.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }


}

