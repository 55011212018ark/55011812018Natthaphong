//
//  ViewController.swift
//  Exam1_55011212018
//
//  Created by student on 12/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
  
    var names = [String]()
    @IBOutlet var tableView: UITableView!
    @IBAction func stocksItem(sender: AnyObject) {
        
            var alert = UIAlertController(title: "New storcks",
                message: "Input Data now!",
                preferredStyle: .Alert)
            
            let saveAction = UIAlertAction(title: "Save",
                style: .Default) { (action: UIAlertAction!) -> Void in
                    
                   let textField = alert.textFields![0] as UITextField
                 // self.names.append(textField.text)
                  //self.tableView.reloadData()
                    
                    let textField2 = alert.textFields![1] as UITextField
                 //  self.names.append(textField2.text)
                 // self.tableView.reloadData()
                    
                    let textField3 = alert.textFields![2] as UITextField
                    self.names.append(textField.text)
                    self.names.append(textField2.text)
                    self.names.append(textField3.text)
                    self.tableView.reloadData()
        
        }
        
            let cancelAction = UIAlertAction(title: "Cancel",
                style: .Default) { (action: UIAlertAction!) -> Void in
            }
            
            alert.addTextFieldWithConfigurationHandler {
                (textField: UITextField!) -> Void in
                textField.placeholder = "Name"
                
        }
        
            alert.addTextFieldWithConfigurationHandler {
            (textField2: UITextField!) -> Void in
                textField2.placeholder = "Amount"
        }
        alert.addTextFieldWithConfigurationHandler {
            (textField3: UITextField!) -> Void in
            textField3.placeholder = "price "
        }
            alert.addAction(saveAction)
            alert.addAction(cancelAction)
            
            presentViewController(alert,
                animated: true,
                completion: nil)
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Stocks List\""
        tableView.registerClass(UITableViewCell.self,
            forCellReuseIdentifier: "Cell")
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "01.jpg"))
    }
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return names.count
           
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell =
            tableView.dequeueReusableCellWithIdentifier("Cell")
                as UITableViewCell
            
            cell.textLabel!.text = names[indexPath.row]
            
            return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

