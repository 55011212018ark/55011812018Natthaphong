//
//  colorTwoViewController.swift
//  navigation
//
//  Created by student on 10/22/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:colorTwoViewController,text:String)
}
class colorTwoViewController: UIViewController {
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    var colorString = " "
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBAction func colorSelectButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text
    }
    @IBAction func saveColor(sender:UIBarButtonItem){
        if(delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        colorLabel.text = colorString
    }
}
