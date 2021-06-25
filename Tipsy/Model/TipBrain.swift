//
//  TipBrain.swift
//  Tipsy
//
//  Created by mac on 6/26/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class TipBrain {
    
    var tip = 0.0
    var splitNumberOfPeople = 0.0
    var amountPaidByEachPerson = "0.00"
    
    
    func billsPerPerson() -> String {
        return amountPaidByEachPerson
    }
    
    
    func splitNumber() -> Int {
       let splitInInt =  Int(splitNumberOfPeople)
        return splitInInt
    }
    
    
    func tipPercentage() -> Int {
       let tipPerc = Int(tip * 100)
        return tipPerc
    }
    
    
    
    func calculateTip(_ buttonPressedByUser: String) {
        
        let buttonSelectedWithoutLastCharacter = buttonPressedByUser.dropLast()
        let buttonSelectedToDouble = Double(buttonSelectedWithoutLastCharacter)!
        tip = buttonSelectedToDouble / 100
    }
    
    func calculateBillsPerPerson(_ totalBill: String) {
        
        let totalBillInDouble = Double(totalBill)!
        let totalWithTip = totalBillInDouble * tip
        let totalPlusTip = totalWithTip + totalBillInDouble
        let SplitAmount = totalPlusTip / splitNumberOfPeople
        let splitAmountToTwoDecimal = String(format: "%.2f", SplitAmount)
        amountPaidByEachPerson = splitAmountToTwoDecimal
       
    }
    
    
    func calculateSplit(_ splitNumber: String) {
        
        splitNumberOfPeople = Double(splitNumber)!
    }
    
    
}
