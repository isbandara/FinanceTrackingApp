//
//  User_Model.swift
//  FinanceTrackingApp (iOS)
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import Foundation

struct User_Model: Identifiable

{
    var id = UUID()
    var Email : String
    var password : String
    var confirmPassword: String
    
    init(Email: String, password: String, confirmPassword: String) {
        
        self.Email = Email
        self.password = password
        self.confirmPassword = confirmPassword
        
    }
}
