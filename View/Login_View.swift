//
//  Login_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import SwiftUI

struct Login_View: View {
    
    @State private var Email = ""
    @State private var password = ""
    
    var body: some View {
      
        NavigationView{
            
            VStack{
                Image("imagelogin2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 10)
             
                Text("Finance-Tracking")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.bottom, 10)
                    
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.bottom, 10)
                
                TextField("Email", text:$Email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(12)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(12)
                
                Button(action: {
                    
                }){
                    Text("Login")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                }
                .padding()
                Spacer()
                
                NavigationLink(destination: FogotPassword_View()){
                    Text("Fogot Password?")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .shadow(radius: 2)
                        .padding(.bottom, 10)
                }
                        
                
                NavigationLink(destination: UserRegistration_View()){
                    Text("Don't have an account? Register here")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .shadow(radius: 2)
                        .padding(.bottom, 20)
                
                    
                       }
                        
                    }
            
            }
            .padding()
        }
        
}


struct Login_View_Previews: PreviewProvider {
    static var previews: some View {
        Login_View()
    }
}
