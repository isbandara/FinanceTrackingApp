//
//  Dashbord1_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-29.
//

import SwiftUI

struct Dashbord1_View: View {
    
    @State var index = 0
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        
        ZStack{
        
        VStack{
            
            
            HStack{
                Text("Dashbord")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Spacer(minLength: 0)
            }
            .padding(.horizontal)
            // Tab View
            
            HStack(spacing: 0){
                
                Text("Income")
                    .foregroundColor(self.index == 0 ?  .white: Color("Color").opacity(0.7))
                    .fontWeight(.bold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 35)
                    .background(Color(.gray))
                    .clipShape(Capsule())
                    .onTapGesture {
                        self.index = 0
                    }
                Spacer(minLength: 0)
                
                Text("Saving")
                    .foregroundColor(self.index == 1 ?  .white: Color("Color").opacity(0.7))
                    .fontWeight(.bold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 35)
                    .background(Color(.gray))
                    .clipShape(Capsule())
                    .onTapGesture {
                        self.index = 1
                    }
                Spacer(minLength: 0)
                
                Text("Expens")
                    .foregroundColor(self.index == 2 ?  .white: Color("Color").opacity(0.7))
                    .fontWeight(.bold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 35)
                    .background(Color(.gray))
                    .clipShape(Capsule())
                    .onTapGesture {
                        self.index = 2
                    }
            }
            .background(Color.black.opacity(0.06))
            .clipShape(Capsule())
            .padding(.top,25)
            
            // Tab view with Swipe.....
            
            T
            //Dashbord Grid....
          
            LazyVGrid(columns: columns,spacing: 30){
                
                
                VStack(alignment: .leading, spacing: 15) {
            
                    Text("Add Income")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    HStack{
                        Spacer(minLength: 0)
                        Text("+")
                            .foregroundColor(.blue)
                            .fontWeight(.heavy)
                    }
                }
                .padding()
                .background( LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(20)
                
                    
                }
            
            // 2nd Grid
            LazyVGrid(columns: columns,spacing: 30){
                
                
                VStack(alignment: .leading, spacing: 15) {
            
                    Text("Delete Income")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    HStack{
                        Spacer(minLength: 0)
                        Text("-")
                            .foregroundColor(.red)
                            .fontWeight(.heavy)
                    }
                }
                .padding()
                .background( LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(20)
                    
                }
            LazyVGrid(columns: columns,spacing: 30){
                
                
                VStack(alignment: .leading, spacing: 15) {
            
                    Text("Set      Targets")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    HStack{
                        Spacer(minLength: 0)
                        Text("**")
                            .foregroundColor(.green)
                            .fontWeight(.heavy)
                    }
                }
                .padding()
                .background( LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(20)
                    
                }
            LazyVGrid(columns: columns,spacing: 30){
                
                
                VStack(alignment: .leading, spacing: 15) {
            
                    Text("Reports")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    HStack{
                        Spacer(minLength: 0)
                        Text("+")
                            .foregroundColor(.black)
                            .fontWeight(.heavy)
                    }
                }
                .padding()
                .background( LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(20)
                    
                }
            }
        .padding(.horizontal)
        .padding(.top,25)
            
            
            Spacer(minLength: 0)
        }
        .padding(.top)
    }
}




struct Dashbord1_View_Previews: PreviewProvider {
    static var previews: some View {
        Dashbord1_View()
    }
}


