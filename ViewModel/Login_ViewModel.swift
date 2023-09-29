//
//  Login_ViewModel.swift
//  FinanceTrackingApp (iOS)
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import Foundation
import Firebase

class Login_ViewModel : ObservableObject
{
    @Published var user_model = User_Model(Email: "", password: "", confirmPassword: "")
    
    @Published var notValidLogin: Bool = false
    @Published var isLoggedIn: Bool = false
    
    private func fields()
    {
        user_model.Email = ""
        user_model.password = ""
        user_model.confirmPassword = ""
    }
    
    func login(Email : String, password: String) {
        
        user_model.Email = Email
        user_model.password = password
        
        Auth.auth().signIn(withEmail: user_model.Email, password: user_model.password)
            {
            result , error in
            
            if error != nil
            {
                
                print(error!.localizedDescription)
                self.notValidLogin = true
                
            
            }
            else
            {
                self.isLoggedIn = true
                self.notValidLogin = false
                
                self.fields()
            }
        }
        
        
    }
}
