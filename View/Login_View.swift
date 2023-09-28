//
//  Login_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import SwiftUI
import Firebase

struct Login_View: View {
    
    @ObservedObject var loginViewModel = Login_ViewModel()
    
    @State private var Email = ""
    @State private var password = ""
    
    var body: some View {
      

        NavigationView{
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .frame(width: 1000, height: 400)
                            .rotationEffect(.degrees(135))
                    .offset(y: -450)
            
            VStack{
                Image("imagelogin2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 5)
             
                Text("Finance-Tracking")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.bottom, 10)
                    
                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.bottom, 10)
                
                TextField("Email", text:$Email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .frame(width: 380, height: 80, alignment: .center)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(12)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .frame(width: 380, height: 80, alignment: .center)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(12)
                
                Button(action: {
                    
                    loginViewModel.login(Email: loginViewModel.user_model.Email, password: loginViewModel.user_model.password)
                    
                }){
                    Text("Login")
                        .font(.title)
                        .padding()
                        .frame(width: 300, height: 60, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                }
                NavigationLink(destination: Dashboard_View(), isActive: $loginViewModel.isLoggedIn){}
                    
            
                                
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
}

struct Login_View_Previews: PreviewProvider {
    static var previews: some View {
        Login_View()
    }
}
