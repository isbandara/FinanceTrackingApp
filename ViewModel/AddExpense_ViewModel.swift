//
//  AddExpense_ViewModel.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-28.
//

import Foundation
import Firebase



class AddExpense_ViewModel: ObservableObject {
    
    
    //Validation functions
    func isAmountValid(_ amount: String) -> Bool {
        if let number = Double(amount), number >= 0{
            return true
        }
        return false
    }
    
    func isDescriptionValid(_ description: String) -> Bool {
        return !description.isEmpty
    }
    func isLocationValid(_ location: String) -> Bool {
        return !location.isEmpty
    }
    
    //Form validations
   // func isFormValid() -> Bool {
   //     return isAmountValid && isDescriptionValid && isLocationValid
   // }
    
    //function to submit the expense data to database
    func submitExpense(){
       
        
    }

}
