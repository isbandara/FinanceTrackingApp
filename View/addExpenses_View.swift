//
//  addExpenses_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-26.
//

import SwiftUI

struct addExpenses_View: View {
    
    @ObservedObject var addExpenseViewModel = AddExpense_ViewModel()
    
    @State private var selectDate = Date()
    @State private var selectedCategory = "Food"
    @State private var amount = ""
    @State private var description = ""
    @State private var location = ""
    

    
    var body: some View {
        
        NavigationView {
           
            Form {
                Spacer()
                Section {
                    DatePicker("Date", selection: $selectDate, displayedComponents: .date)
                    
                    Text("Category")
                    Picker("", selection: $selectedCategory) {
                        Text("Food").tag("Food")
                        Text("Utilities").tag("Utilities")
                        Text("Transport").tag("Transport")
                        Text("Rent").tag("Rent or lease")
                        Text("Other").tag("Other")
                    }
                    .pickerStyle(MenuPickerStyle())
                    
                    Text("Amount")
                    TextField("", text: $amount)
                        .keyboardType(.decimalPad)
                       
                    Text("Description")
                    TextField("", text: $description)
                      
                    
                    Text("Location")
                    TextField("", text: $location)
                       
                }
                
                // Button to submit data
                Section {
                    Button(action: {
                       
                        
                    }) {
                        Text("Submit Expense")
                            .font(.title)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                }
            }
            .navigationBarTitle("Add Expenses")
        }
       

        }
    }
    
   

struct addExpenses_View_Previews: PreviewProvider {
    static var previews: some View {
        addExpenses_View()
    }
}
