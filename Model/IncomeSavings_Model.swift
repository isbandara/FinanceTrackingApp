//
//  IncomeSavings_Model.swift
//  FinanceTrackingApp (iOS)
//
//  Created by Ishara Sanjeewa on 2023-09-30.
//

import Foundation

struct IncomeSavings_Model : Identifiable

{
    var id = UUID()
    let date : Date
    let category : String
    let amount : Double
    let description : String
    
    
    init(date: Date, category: String, amount: Double,description: String) {
        
        self.date = date
        self.category = category
        self.amount = amount
        self.description = description
        
    }
    
}
