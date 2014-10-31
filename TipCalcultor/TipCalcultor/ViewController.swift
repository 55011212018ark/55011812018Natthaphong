//
//  ViewController.swift
//  TipCalcultor
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    ,UITableViewDelegate
    
{
    @IBOutlet var totalTextfield : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsText : UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func calculateTapped(sender: AnyObject){
        tipCalc.total = Double((totalTextfield.text as NSString).doubleValue)
        
        let possibleTips = tipCalc.returnPossibleTip()
        var results = ""
        for(tipPct,tipValue) in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
            
        }
        resultsText.text = results
    }
    @IBAction func taxPercenChange(sender: AnyObject){
        
        tipCalc.taxPct = Double(taxPctSlider.value)/100.0
        refeshUI()
    }
    @IBAction func viewTapped(sender: AnyObject){
        
        totalTextfield.resignFirstResponder()
        
    }
    
    let tipCalc = TipCalculatorModel(total:33.33,taxPct:0.06)
    func refeshUI(){
       
        totalTextfield.text = String(format:"%0.2f",tipCalc.total)
        
        taxPctSlider.value = Float(tipCalc.taxPct)*100.0
       
        taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
        
        resultsText.text = ""
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        refeshUI()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}




