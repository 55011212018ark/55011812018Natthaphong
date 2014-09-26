//
//  ViewController.swift
//  TipCalcultor
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate{
    @IBOutlet var totalTextfield : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsText : UITextView!
    @IBOutlet var tableView: UITableView!
    
    let tipCalc = TipCalculatorModel(total:33.25,total:0.06)
    var possibleTips = Dictionary<Int,(tipAmt:Double,total:Double)>()
    var sortedKeys:[Int]=[]
    
    @IBAction func calculateTapped(sender: AnyObject){
        tipCalc.total = Double((totalTextfield.text as NSString).doubleValue)
        
        let possibleTips = tipCalc.returnPossibleTip()
        var results = ""
        for(tipPct,tipValue) in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
            
        }
        resultsText.text = results
        
    }
    func tableView(tableView:UITableView!,cellForRowAtIndexPath: NSIndexPath!)->UITableViewCell!{
        var cell = UITableViewCell(style: UITableViewCellStyle.value2, reuseIdentifier: nil)
        let tipPct= sortedKeys[IndexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel!.text = "\(tipPct)%:"
        cell.detailTextLabel!.text=String(format:"Tip: $%0.2f, Total: $%0.2f",tipAmt,total)
        return cell
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
        // Do any additional setup after loading the view, typically from a nib.
        refeshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

