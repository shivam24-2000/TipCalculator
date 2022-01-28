//
//  ViewController.swift
//  TipCalculator
//
//  Created by Shivam Singhal on 28/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmounttxt: UITextField!
    @IBOutlet weak var tipAmounttxt: UITextField!
    @IBOutlet weak var tipAmountLb: UILabel!
    @IBOutlet weak var billAmountLb: UILabel!
    @IBOutlet weak var calculatebtn: UIButton!
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let billAmount:Double = Double(billAmounttxt.text!)!
        let tipAmount:Double = (Double(tipAmounttxt.text!)! / 100) * billAmount
        
        tipAmountLb.text = String(format: "$%0.2f", tipAmount)
        
        billAmountLb.text = String(format: "$%0.2f", tipAmount + billAmount)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

