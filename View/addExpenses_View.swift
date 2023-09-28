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
    
//Validation stste variables
    @State private var isAmountValid = true
    @State private var isDescriptionValid = true
    @State private var isLocationValid = true
    @State private var isFormValid = true
    @State private var showAlert = false
    
    var body: some View {
        
        NavigationView{
            
           
            Form{
                Spacer()
                Section {

                       
                    DatePicker("Date",selection:$selectDate,displayedComponents:[.date,.hourAndMinute])
                                            
                    Text("Category")
                    Picker("", selection: $selectedCategory){
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
                     //   .onChange(of: amount) { newValue in
                     //     isAmountValid = isAmountValid(newValue)
                     //  }
                        if !isAmountValid{
                            Text("Invalid amount")
                                .foregroundColor(.red)
                        }
                    
                    Text("Description")
                    TextField("", text: $description)
                   //     .onChange(of: description) { newValue in
                   //         isDescriptionValid = isDescriptionValid(newValue)
                    //}
                        if !isDescriptionValid {
                            Text("Description is required")
                                .foregroundColor(.red)
                        }
                    
                    
                    Text("Location")
                    TextField("", text: $location)
                    //.onChange(of: location) { newValue in
                   //         isLocationValid = isLocationValid(newValue)
                    //}
                      //  if !isLocationValid {
                       //     Text("Location is required")
                        //        .foregroundColor(.red)
                        //}

                }
                //button to submit data
                Section{
                    Button( action: {
                       // if isFormValid(){
                           // submitExpense()
                        }
                        //else {
                            
                         //   showAlert = true                        }
                        
                   // }
                ) {
                        Text("Submit Expense")
                            .font(.title)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                //    .disabled(!isFormValid())
            }
        }
            .navigationBarTitle("Add Expenses")
            
    }
        .alert(isPresented: $showAlert){
            Alert(
                  title: Text("Validation Error"),
                  message: Text("Please enter valid input for all fields."),
                  dismissButton: .default(Text("OK")))
        }
    }
}
    
struct addExpenses_View_Previews: PreviewProvider {
    static var previews: some View {
        addExpenses_View()
    }
}

