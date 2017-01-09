//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Lesslie Garcia on 10/13/16.
//  Copyright © 2016 Lesslie Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    var percent = 0.0
    var splitNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func calculate( p: Double) {
        if let amount = Double(billAmount.text!) {
            let tip = (amount * p) / Double(splitNumber)
            let totalPay = (amount / Double(splitNumber)) + tip
            totalLabel.text = String (format: "$%.2f", totalPay)
            tipLabel.text = String(format: "$%.2f", tip)
            billAmount.resignFirstResponder()
        }
    }
    
    @IBAction func on5ButtonTapped(_ sender: AnyObject) {
        percent = 0.25
        calculate(p: percent)
        
    }
    
    @IBAction func on10ButtonTapped(_ sender: AnyObject) {
        percent = 0.10
        calculate(p: percent)
        
    }
    
    @IBAction func on15ButtonTapped(_ sender: AnyObject) {
        percent = 0.15
        calculate(p: percent)
        
    }
    
    @IBAction func on20ButtonTapped(_ sender: AnyObject){
        percent = 0.20
        calculate(p: percent)
    }
    
    @IBAction func addButton(_ sender: AnyObject) {
        splitNumber += 1
        numberOfPeople.text = "\(splitNumber)"
        calculate(p: percent)
    }
    
    @IBAction func minusButton(_ sender: AnyObject) {
        if splitNumber > 1 {
            splitNumber -= 1
            numberOfPeople.text = "\(splitNumber)"
            calculate(p: percent)
        }
    }
    
    
}
    
    
    


