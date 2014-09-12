//
//  ViewController.swift
//  TipCalcultor
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var totalTextfield :UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxLabel : UILabel!
    @IBOutlet var resultsTextview :UITextView!
    
    @IBAction func calculateTappen(sender : AnyObject){
        tipCal.total = Double((totalTextfield.text as NSString).doubleValue)
        let possibleTips = tipCal.returnPossibleTips()
        var results = ""
        for (tipPct, tipValue)in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextview.text = results
    }

    @IBAction func taxPercentageChanged(sender : AnyObject){
        tipCal.taxPct = Double(taxPctSlider.value) / 100.0
        refredhUI()
        
    }
    @IBAction func ViewTappend(sender : AnyObject){
        totalTextfield.resignFirstResponder()
        
    }
    let tipCal = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    func refredhUI() {
        
        totalTextfield.text = String(format: "%0.2f", tipCal.total)
        
        taxPctSlider.value = Float(tipCal.taxPct)*100.0
        
        taxLabel.text = "tax Percentage (\(Int(taxPctSlider.value))%)"
        resultsTextview.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refredhUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

