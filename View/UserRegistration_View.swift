//
//  UserRegistration_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import SwiftUI

struct UserRegistration_View: View {
    
    @State private var Email = ""
    @State private var password = ""
    @State private var confirmPassword = ""

    
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
            
            TextField("Email", text: $Email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: 380, height: 80, alignment: .center)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(15)
            
            SecureField("password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: 380, height: 80, alignment: .center)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(15)
            
            SecureField("Confirm password", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: 380, height: 80, alignment: .center)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(15)
            
            Button(action: {
                //handle registration
                
            }){
                
                    Text("Sign Up")
                        .font(.title)
                        .padding()
                        //.frame(maxWidth: .infinity)
                        .frame(width: 300, height: 60, alignment: .center)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(20)
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
