//
//  Annuity.swift
//  loanme
//
//  Created by Admin on 11/8/17.
//  Copyright © 2017 Frank B Greco Jr. All rights reserved.
//

import Foundation

class Annuity {
    
    var presentValue: Double = 0.0
    var interestRate: Double = 0.0
    var numPeriods: Double = 0.0
    
    init(presentValue: Double, interestRate: Double, numPeriods: Double) {
        
        self.presentValue = presentValue
        self.interestRate = interestRate
        self.numPeriods = numPeriods
        
    }
    
    public func calculatePayment() -> Double {
        
        let numerator = (1.0 - pow(calculateNu(), self.numPeriods))
        let demoninator = self.calculateMonthlyInterest()
        
        return self.presentValue / ( numerator / demoninator )
        
    }
    
    private func calculateNu() -> Double {
        
        let numerator = 1.0
        let demoninator = (1.0 + self.calculateMonthlyInterest())
        
        return numerator / demoninator
        
    }
    
    private func calculateMonthlyInterest() -> Double {
        
        let numerator = self.interestRate
        let demoninator = 12.0
        
        return numerator / demoninator
        
    }
    
}
