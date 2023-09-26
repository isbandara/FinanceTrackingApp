//
//  Dashboard_View.swift
//  FinanceTrackingApp
//
//  Created by Ishara Sanjeewa on 2023-09-25.
//

import SwiftUI


struct Dashboard_View: View {
    @State private var income: Double = 5000.00
    @State private var expenses: Double = 3500.00
    @State private var savings: Double = 1500.00
    
    var body: some View {
        VStack{
            Text("Expense Tracking      Dashboard")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.bottom, 20)
            
            HStack{
                FinancialStatusView(title:"Income",amount: income, color: .green)
                FinancialStatusView(title:"Expenses",amount: expenses, color: .red)
                FinancialStatusView(title:"Savings",amount: savings, color: .blue)
            }
            .padding(.bottom, 30)
            
            Text( "Expense Trends")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.bottom, 10)
            
   //         let chartData: ChartData = ChartData(points: [
    //ChartDataPoint(value: income, Label:,Legend: Legend(color: .green)),
   // ChartDataPoint(value: expenses, Label:,Legend: Legend(color: .red)),
   // ChartDataPoint(value: savings, Label:,Legend: Legend(color: .blue))
     //       ])
            
       //     BarChartView(data: chartData, //title:"Montly Summary")
                .padding(.top, 20)
                .padding(.horizontal)
            
            Spacer()
        }
        .padding()
    }
}

struct Dashboard_View_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Dashboard_View()
            Dashboard_View()
        }
    }
}

struct FinancialStatusView: View {
    let title: String
    let amount:Double
    let color: Color
    
    var body: some View{
        VStack{
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
            
          //  Text("$\(amount, specifier: "%.2f)")
           //     .font(.title)
         //       .fontWeight(.bold)
            //    .foregroundColor(color)
        }
    }
}
