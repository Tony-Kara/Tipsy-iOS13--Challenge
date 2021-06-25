//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tipBrain = TipBrain()

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
         
         sender.isSelected = true
         billTextField.endEditing(true)
        
        tipBrain.calculateTip(sender.currentTitle!)
 
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        tipBrain.calculateBillsPerPerson(billTextField.text!)
        self.performSegue(withIdentifier: "tony", sender: self)
       
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%0.f", sender.value)
        let splitNumber =  splitNumberLabel.text!
        tipBrain.calculateSplit(splitNumber)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "tony" {
        
        let destinationVC = segue.destination as! ResultsViewController
            destinationVC.amountToBePaid = tipBrain.billsPerPerson()
            destinationVC.splitNumber = tipBrain.splitNumber()
            destinationVC.tipPercentage = tipBrain.tipPercentage()
            
        }
        
    }
    
    
    
    
    

}

