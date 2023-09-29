//
//  UserRegistration_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import SwiftUI

struct UserRegistration_View: View {
    
@ObservedObject var createAccountViewModel = CreateAccount_ViewModel()

    
    var body: some View {
       
        ZStack{
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 1000, height: 400)
                        .rotationEffect(.degrees(135))
                        .offset(y: -450)
        
        
        VStack{
            Text("Create an account")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding(.bottom, 60)
            
            TextField("Email", text: $createAccountViewModel.user_model.Email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: 380, height: 80, alignment: .center)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(15)
                .alert(isPresented: $createAccountViewModel.notValidMail) {
                                        Alert(title: Text("Invalid Email"), message: Text("Please check your Email "), dismissButton: .default(Text("OK"))
                                            {
                                            createAccountViewModel.errorAlert()
                                        })}
            
            SecureField("password", text: $createAccountViewModel.user_model.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: 380, height: 80, alignment: .center)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(15)
                .alert(isPresented: $createAccountViewModel.notValidPass) {
                                        Alert(title: Text("Wrong Password"), message: Text("Please check your Password "), dismissButton: .default(Text("OK"))
                                            {
                                            createAccountViewModel.errorAlert()
                                        })}
            
            
            SecureField("Confirm password", text: $createAccountViewModel.user_model.confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: 380, height: 80, alignment: .center)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(15)
            
                .alert(isPresented: $createAccountViewModel.notMatchedConfirmPass) {
                                        Alert(title: Text("Password not mached"), message: Text("Please check your Password "), dismissButton: .default(Text("OK"))
                                            {
                                            createAccountViewModel.errorAlert()
                                        })}
            
            Button(action: {
                
                createAccountViewModel.createAcc(email: createAccountViewModel.user_model.Email, password: createAccountViewModel.user_model.password, confirmpassword: createAccountViewModel.user_model.confirmPassword)
                
            }){
                
                    Text("Sign Up")
                        .font(.title)
                        .padding()
                        //.frame(maxWidth: .infinity)
                        .frame(width: 300, height: 60, alignment: .center)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .alert(isPresented: $createAccountViewModel.successAccCreate) {
                            Alert(title: Text("Success"), message: Text("Account has been created succesfully"), dismissButton: .default(Text("OK"))
                                {
                                createAccountViewModel.errorAlert()
                            })}

                
                }
            .padding()
            }
        .padding()
        
        HStack{
            
        NavigationLink(destination: Login_View()){
            Text("Alredy have an account?")
                .font(.headline)
                .foregroundColor(.black)
               // .frame(maxWidth: .infinity)
                .shadow(radius: 2)
                .padding(.top, 500)
            
            Text("Sign In")
                .font(.headline)
                .foregroundColor(.red)
              //  .frame(maxWidth: .infinity)
                .shadow(radius: 2)
                .padding(.top, 500)
        }
        }
        }
    }
}
        
        
struct UserRegistration_View_Previews: PreviewProvider {
    static var previews: some View {
        UserRegistration_View()
    }
}

