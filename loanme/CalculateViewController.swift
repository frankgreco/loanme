//
//  CalculateViewController.swift
//  loanme
//
//  Created by Admin on 11/8/17.
//  Copyright © 2017 Frank B Greco Jr. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var presentValue: UITextField!
    
    @IBOutlet weak var interestRate: UITextField!
    
    @IBOutlet weak var numPeriods: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is ResultViewController {
            let vc = segue.destination as? ResultViewController
            
            vc?.annuity = Annuity(
                presentValue: (self.presentValue.text! as NSString).doubleValue,
                interestRate: (self.interestRate.text! as NSString).doubleValue,
                numPeriods: (self.numPeriods.text! as NSString).doubleValue
            )
        }
        
    }
}
