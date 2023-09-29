//
//  CreateAccount_ViewModel.swift
//  FinanceTrackingApp (iOS)
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import Foundation
import Firebase




class CreateAccount_ViewModel : ObservableObject
{

    
    @Published var user_model = User_Model(Email: "", password: "", confirmPassword: "")
        @Published var notValidMail: Bool = false
        @Published var notValidPass: Bool = false
        @Published var notMatchedConfirmPass: Bool = false
        @Published var successAccCreate: Bool = false
    
    
    func errorAlert()
    {
        notValidMail = false
        notValidPass = false
        notMatchedConfirmPass = false
        successAccCreate = false
        
    }
    
    
    
    private func isValidMail(email : String)
    {
        let emailRegexPattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegexPattern)
        notValidMail = !emailPredicate.evaluate(with: email)
      
    }
    
    private func isValidPassword(password : String)
    {
        let passwordRegex = "^(?=.[A-Z])(?=.[a-z])(?=.\\d)(?=.[$@$!%?&])[A-Za-z\\d$@$!%?&]{8,}"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        notValidPass = !passwordPredicate.evaluate(with: password)
        
    }
    
    private func isConfirmPassValid(password : String , confirmPassword : String)
    {
       notMatchedConfirmPass = !(password == confirmPassword)
        
    }
    
    
    private func Fields()
    {
        user_model.Email = ""
        user_model.password = ""
        user_model.confirmPassword = ""
    }
    

    
     
    func createAcc(email : String , password : String , confirmpassword : String)
   {
    
        
        isValidMail(email : user_model.Email)
        isValidPassword(password : user_model.password)
        isConfirmPassValid(password : user_model.password , confirmPassword: user_model.confirmPassword)
        
      
        if notValidMail
        {
            
        }
        else
        {
            if notValidPass
            {
                
            }
            else
            {
                
                if notMatchedConfirmPass
                {
                    
                }
                else
                {
                    Auth.auth().createUser(withEmail: user_model.Email, password: user_model.password)
                    { result, error in
                        if error != nil
                        {
                            print(error!.localizedDescription)
                        }
                        else
                        {
                            self.successAccCreate = true
                            self.Fields()
                          
                        }
                        
                    }
                }
                
            }
               
        }
        
        
    
   
   }
    
    
}
