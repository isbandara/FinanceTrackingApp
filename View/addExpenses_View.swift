//
//  addExpenses_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-26.
//

import SwiftUI

struct addExpenses_View: View {
    @State private var selectDate = Date()
    @State private var selectedCategory = "Food"
    @State private var amount = ""
    @State private var description = ""
    @State private var location = ""
    
//Validation stste variables
    @State private var isAmountValid = true
    @State private var isDescriptionValid = true
    @State private var isLocationValid = true

    
    var body: some View {
        
        NavigationView{
            Form{
                Spacer()
                Section {
                    DatePicker("Date", selection: $selectDate, displayedComponents: [.date, .hourAndMinute])
                                            
                    Text("Category")
                    Picker("Category", selection: $selectedCategory){
                        Text("Food").tag("Food")
                        Text("Utilities").tag("Utilities")
                        Text("Transport").tag("Transport")
                        Text("Rent").tag("Rent or lease")
                        Text("Other").tag("Other")
                    }
                    .pickerStyle(MenuPickerStyle())
                    
                    Text("Amount")
                    TextField("Amount", text: $amount)
                        .keyboardType(.decimalPad)
                        .onChange(of: amount) { newValue in
                            isAmountValid = isAmountValid (newValue)
                        }
                        if !isAmountValid{
                            Text("Invalid amount")
                                .foregroundColor(.red)
                        }
                    
                    Text("Description")
                    TextField("Description", text: $description)
                        .onChange(of: description) { newValue in
                            isDescriptionValid = isDescriptionValid(newValue)
                        }
                        if !isDescriptionValid{
                            Text("Description is required")
                                .foregroundColor(.red)
                        }
                    
                    
                    Text("Location")
                    TextField("Location", text: $location)
                        .onChange(of: location) { newValue in
                            isLocationValid = isLocationValid(newValue)
                        }
                        if !isDescriptionValid{
                            Text("Location is required")
                                .foregroundColor(.red)
                        }

                }
                //button to submit data
                Section{
                    Button( action: {
                        if isFormValid(){
                            submitExpense()
                        }
                        else {
                            Text("Please enter valid input")
                        }
                        
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
                    .disabled(!isFormValid())
            }
        }
            .navigationBarTitle("Add Expenses")
            
    }
}
    //Validation functions
    func isAmountValid(_ amount: String) -> Bool {
        if let number = Double(amount), number >= 0{
            return true
        }
        return false
    }
    
    func isDescriptionValid(_ description: String) -> Bool {
        return !description.isEmpty
    }
    func isLocationtionValid(_ location: String) -> Bool {
        return !location.isEmpty
    }
    
    //Form validations
    func isFormValid() -> Bool {
        return isAmountValid && isDescriptionValid && isLocationValid
    }
    
    //function to submit the expense data to database
    func submitExpense(){
       
        
    }

struct addExpenses_View_Previews: PreviewProvider {
    static var previews: some View {
        addExpenses_View()
    }
}
}
