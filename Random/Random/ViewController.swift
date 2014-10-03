//
//  ViewController.swift
//  Random
//
//  Created by student on 9/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var oneButton :UIButton!
    @IBOutlet weak var twoButtom :UIButton!
    
    @IBOutlet weak var threeButton: UIButton!
    var i=0
    var j=0
    var k=0
    
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
  
    @IBOutlet weak var resetButton: UIButton!
 
    
    @IBAction func One(sender: AnyObject) {
        i=i+1
        oneLabel.text=String(i)
    }
   
    @IBAction func Two(sender: AnyObject) {
        j=j+2
        twoLabel.text=String(j)
    }
    
    @IBAction func Three(sender: AnyObject) {
        k=k+3
        threeLabel.text=String(k)
    }
    
    
    @IBAction func ResetAll(sender: AnyObject) {
        i=0
        j=0
        k=0
        
        oneLabel.text=String(i)
        twoLabel.text=String(j)
        threeLabel.text=String(k)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

