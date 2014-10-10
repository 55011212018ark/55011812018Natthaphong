//
//  ViewController.swift
//  Exam1_55011212018
//
//  Created by Student on 10/10/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet var nameText: UITextField!
    @IBOutlet var volumeText: UITextField!
    @IBOutlet var priceText: UITextField!
    @IBOutlet var totalText: UITextField!
    @IBOutlet var totalButton: UIButton!
    @IBOutlet var profitButton: UIButton!
    
    @IBOutlet var tableViewOutlet: UITableView!
    
    @IBAction func totalAction(sender: AnyObject) {
        var vo = volumeText.text.toInt()
        var pr = priceText.text.toInt()
        
        totalText.text = String()
    }
    
    @IBAction func profitAction(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "")
        
        cell.textLabel?.text = "Row #\(indexPath.row)"
        cell.detailTextLabel?.text = "Subtitle #\(indexPath.row)"
        
        return cell
    }
}

