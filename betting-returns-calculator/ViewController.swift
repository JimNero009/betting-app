//
//  ViewController.swift
//  betting-returns-calculator
//
//  Created by Jim Cockburn on 27/02/2020.
//  Copyright © 2020 Jim Cockburn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var betAmount: UITextField!
    @IBOutlet weak var outputField: UITextField!
    @IBOutlet weak var oddsLeft: UITextField!
    @IBOutlet weak var oddsRight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        betAmount.text = "1"
        oddsLeft.text = "1"
        oddsRight.text = "1"
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        let bet = Float(betAmount.text!)!
        let leftOdd = Float(oddsLeft.text!)!
        let rightOdd = Float(oddsRight.text!)!
        let result = bet + bet * leftOdd/rightOdd
        outputField.text = String(result)
    }
    

}

