//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by mac on 6/22/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalsLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    var amountToBePaid: String?
    var splitNumber: Int?
    var tipPercentage: Int?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        totalsLabel.text = amountToBePaid
        settingsLabel.text = "Split between \(splitNumber!) people, with \(tipPercentage!)% tip."
        
        
    }
    
    @IBAction func reclaculatePressed(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
