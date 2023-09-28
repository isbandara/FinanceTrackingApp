//
//  FogotPassword_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import SwiftUI

struct FogotPassword_View: View {
    
    @State private var Email = ""
    @State private var isResettingPassword = false
    @State private var resetPasswordressult: Bool? = nil
    
    var body: some View {
        
        ZStack{
            
        //Color.green
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 1000, height: 400)
                        .rotationEffect(.degrees(135))
                        .offset(y: -450)
        VStack{
       
        Text("Fogot Password")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.blue)
            .padding(.bottom, 30)
            
            Text("Enter your email address below")
            Text("we'll send you a password to email")
                .font(.headline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            TextField("Enter email", text: $Email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color(.secondarySystemBackground))
                .frame(width: 380, height: 80, alignment: .center)
                .cornerRadius(50)
                .accessibilityLabel("Email Address")
            
            Button(action: {
                resetPassword()
            })
            {
                Text("Reset Password")
                    .font(.title)
                    .padding()
                    //.frame(maxWidth: .infinity)
                    .frame(width: 300, height: 60, alignment: .center)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
               
                    }
                    .padding()
                
                if let resetResult = resetPasswordressult{
                    Text (resetResult ? "Password reset email sent successfully" : "Password reset failed")
                        .foregroundColor(resetResult ? .green : .red)
                        .padding()
                }

            }
            .padding()
            
        }
    }
}

private func resetPassword(){
   // isResettingPassword = true
    
   // resetPasswordResult = true
  //  isResettingPassword = false
}

struct FogotPassword_View_Previews: PreviewProvider {
    static var previews: some View {
        FogotPassword_View()
    }
}
