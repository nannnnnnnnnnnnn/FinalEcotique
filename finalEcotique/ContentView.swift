import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("home 1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                        .edgesIgnoringSafeArea(.top)
                        .padding(.top, -28)
                    
                    NavigationLink(destination: SecondView()) {
                        ZStack {
                            
                            
                            RoundedRectangle(cornerRadius: 40.0)
                                .padding(.horizontal, 60)
                                .padding(.top, 200)
                                .padding(.bottom, 460)
                                .offset(y: 330)
                                .foregroundColor(Color(red: 0.953, green: 0.884, blue: 0.829))
                            
                            
                            
                            Text("Get Started")
                                .font(.custom("Futura", fixedSize: 23))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.86, green: 0.617, blue: 0.653))
                                .padding()
                                .cornerRadius(10)
                                .offset(y: 200)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
