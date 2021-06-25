//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    var tip = 0.0
    var splitNumberOfPeople = 0.0
    var amountPaidByEachPerson = "0.00"
    
    
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
        
        let buttonPressedByUser = sender.currentTitle ?? "0"
        let buttonSelectedWithoutLastCharacter = buttonPressedByUser.dropLast()
        let buttonSelectedToDouble = Double(buttonSelectedWithoutLastCharacter)!
        tip = buttonSelectedToDouble / 100
      
        
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let totalBill = billTextField.text!
        let totalBillInDouble = Double(totalBill)!
        let totalWithTip = totalBillInDouble * tip
        let totalPlusTip = totalWithTip + totalBillInDouble
        let SplitAmount = totalPlusTip / splitNumberOfPeople
        let splitAmountToTwoDecimal = String(format: "%.2f", SplitAmount)
        amountPaidByEachPerson = splitAmountToTwoDecimal
        print(amountPaidByEachPerson)
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%0.f", sender.value)
        let splitNumber =  splitNumberLabel.text!
        splitNumberOfPeople = Double(splitNumber)!
        
    }
    
    
    
    
    
    
    

}

