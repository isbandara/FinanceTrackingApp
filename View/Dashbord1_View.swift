import SwiftUI

struct Dashbord1_View: View {
    
    @State var index = 0
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        
    NavigationView{
        ZStack{
            
            VStack{
                
                HStack{
                    Text("Dashboard")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    
                    Spacer(minLength: 0)
                }
                .padding(.horizontal)
                
                // Tab View
                HStack{
                    
                    Text("Income")
                        .foregroundColor(self.index == 0 ?  .blue: Color("Color").opacity(0.6))
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color(.gray))
                        .clipShape(Capsule())
                        .onTapGesture {
                            self.index = 0
                        }
                    Spacer(minLength: 0)
                    
                    Text("Expense")
                        .foregroundColor(self.index == 1 ?  .red: Color("Color").opacity(0.7))
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color(.gray))
                        .clipShape(Capsule())
                        .onTapGesture {
                            self.index = 1
                        }
                    Spacer(minLength: 0)
                    
                    Text("Saving")
                        .foregroundColor(self.index == 2 ?  .green: Color("Color").opacity(0.7))
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color(.gray))
                        .clipShape(Capsule())
                        .onTapGesture {
                            self.index = 2
                        }
                }
                .background(Color.black.opacity(0.06))
                .clipShape(Capsule())
                
                // Tab view with Swipe.....
                
                TabView(selection: $index) {
                    
    
                        
                    NavigationLink(destination: AddIncome_View()){
                        Text("Click")
                            .font(.headline)
                            .foregroundColor(.black)
                            .shadow(radius: 2)
                            padding(.bottom, 10)
                        SwipeableContentView(title: "Add Income", symbol: "+", color: .blue)
                            .tag(0)
                    }
                    

                        
                    SwipeableContentView(title: "Set Targets", symbol: "+", color: .blue)
                        .tag(0)
                    
                    SwipeableContentView(title: "Add Expenses", symbol: "-", color: .red)
                        .tag(1)

                    SwipeableContentView(title: "Add Savings", symbol: "**", color: .green)
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .padding(.top, 20)
                
            }
            .padding(.horizontal)
            .padding(.top,10)
            
            //Spacer()
        }
        .padding(.top)
    }
}
}
struct SwipeableContentView: View {
    let title: String
    let symbol: String
    let color: Color
    
    var body: some View {
        
    
        VStack(alignment: .leading, spacing: 15) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 10)
                .padding(.horizontal)
        
            HStack {
                Spacer(minLength: 0)
                Text(symbol)
                    .font(.title)
                    .foregroundColor(color)
                    .fontWeight(.heavy)
            }
        }
        
        .padding(.bottom, 500)
        .background( LinearGradient(gradient: Gradient(colors: [color, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
    }
}

struct Dashbord1_View_Previews: PreviewProvider {
    static var previews: some View {
        Dashbord1_View()
    }
}
