//
//  Expense_Model.swift
//  FinanceTrackingApp (iOS)
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import Foundation

struct Expense_Model : Identifiable

{
    var id = UUID()
    let date : Date
    let category : String
    let amount : Double
    let description : String
    let location : String?
    
    init(date: Date, category: String, amount: Double,description: String,location: String?) {
        
        self.date = date
        self.category = category
        self.amount = amount
        self.description = description
        self .location = location
    }
    
}


