//
//  ResultViewController.swift
//  loanme
//
//  Created by Admin on 11/8/17.
//  Copyright © 2017 Frank B Greco Jr. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var annuity: Annuity = Annuity(
        presentValue: 0.0,
        interestRate: 0.0,
        numPeriods: 0.0
    )
    
    @IBOutlet weak var paymentAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let monthlyPayment = self.annuity.calculatePayment()
        
        paymentAmount.text = String(monthlyPayment)
    }
    
}

