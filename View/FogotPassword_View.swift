//
//  FogotPassword_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import SwiftUI

struct FogotPassword_View: View {
    
    @State private var Email = ""
    
    var body: some View {
        VStack{
            
        Text("Fogot Password")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.blue)
            padding(.bottom, 30)
            
            Text("Enter your email address below, and we'll send you a password to email")
                .font(.headline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            TextField("Email", text:$Email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(20)
            
            Button(action: {
                
            }){
                Text("Reset Password")
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                
            }
            .padding()
            
        }
        .padding()
    }
}

struct FogotPassword_View_Previews: PreviewProvider {
    static var previews: some View {
        FogotPassword_View()
    }
}
