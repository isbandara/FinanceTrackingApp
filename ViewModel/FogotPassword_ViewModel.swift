//
//  FogotPassword_ViewModel.swift
//  FinanceTrackingApp (iOS)
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import Foundation
import Firebase


class ForgotPassword_ViewModel: ObservableObject
{
    @Published var user_model = User_Model(Email: "", password: "", confirmPassword: "")
    
    @Published var notValidMail: Bool = false
    @Published var successReset: Bool = false
    
    func dismissAlert()
    {
        notValidMail = false
        successReset = false
        
    }
    
    
    
    private func isValidMail(Email : String)
    {
        let emailRegexPattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegexPattern)
        notValidMail = !emailPredicate.evaluate(with: Email)
      
    }
    
    private func Fields()
    {
        user_model.Email = ""
        user_model.password = ""
        user_model.confirmPassword = ""
    }
    
    
    
    func resPass(email : String )
   {
        user_model.Email = email
        
        
        isValidMail(Email : user_model.Email)
     
        
      
        if notValidMail
        {
            
        }
        else
        {
            Auth.auth().sendPasswordReset(withEmail: user_model.Email) { error in
                if error != nil
                {
                    print(error!.localizedDescription)
                
                }
                else
                {
                    self.successReset = true
                    self.Fields()
                }
                
            }
        }
    }
    
    
}
