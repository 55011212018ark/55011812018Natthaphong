//
//  ViewController.swift
//  navigation
//
//  Created by student on 10/22/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {
    
    
    @IBOutlet var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func  myVCDidFinish(controller: colorTwoViewController, text: String) {
            colorLabel.text = "Color is : " +  text
        if(text=="Red"){
            colorLabel.backgroundColor=UIColor.redColor()
            view.backgroundColor=UIColor.redColor()
        }
        else if(text=="Green"){
            colorLabel.backgroundColor=UIColor.greenColor()
            view.backgroundColor=UIColor.greenColor()
        }
        else if(text=="blue"){
            colorLabel.backgroundColor=UIColor.blueColor()
            view.backgroundColor=UIColor.blueColor()
        }
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue:UIStoryboardSegue,sender:AnyObject!){
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as colorTwoViewController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
    }
    
    
}