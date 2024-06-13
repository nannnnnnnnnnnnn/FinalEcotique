//
//  ContentView.swift
//  ecotiqueArticle
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI

struct FifthView: View {
    @State private var number = 0
    @State private var numero = 0
    @State private var nombre = 0
    var body: some View {
       
        ScrollView{
            ZStack {
                Color(red: 0.96, green: 0.88, blue: 0.83)
                                        .edgesIgnoringSafeArea(.all)
                                    .ignoresSafeArea()
                VStack{
                    Image("ecolane")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                        Text("Everlane is a clothing design and manufacturing company that specializes in designing clothing and footwear for men and women. It also provides an online marketplace that allows individuals to create accounts and purchase their products online.")
                        .font(.title3)
                        .fontDesign(.serif)
                            .background(Rectangle().foregroundColor(.clear))
                            .shadow(radius:300)
                            .padding()
                            .cornerRadius(15)
                            .padding()
                            .shadow(radius:100)


                     
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            
                            VStack{
                                
                                Image("EverlaneClothesForSpring")
                                    .resizable()
                                    .frame(width: 200, height: 250)
                                    .cornerRadius(15)
                                    .shadow(radius:20)
                                // Set fixed size for images
                                
                                
                                
                                Text("Teal Button-Up")
                                Text("Quantity: \(number)")
                                
                                Stepper("Adjust Number", value: $number, in: 0...100)
                                    .padding()
                                
                                
                            }
                            
                            
                            VStack{
                                
                                Image("dress")
                                    .resizable()
                                    .frame(width: 200, height: 250)
                                    .cornerRadius(15)
                                    .shadow(radius:20)
                                // Set fixed size for images
                                
                                
                                Text("White Medium Dress")
                                Text("Quantity: \(numero)")
                                
                                Stepper("Adjust Number", value: $numero, in: 0...100)
                                    .padding()
                                
                            }
                            
                            VStack{
                                
                                Image("pants")
                                    .resizable()
                                    .frame(width: 200.0, height: 250.0)
                                    .cornerRadius(15)
                                    .shadow(radius:20)
                                
                                
                                
                                Text("Sage Green Pants")
                                Text("Quantity: \(nombre)")
                                
                                Stepper("Adjust Number", value: $nombre, in: 0...100)
                                    .padding()
                                
                            }
                     
                            
                            
                            
                        }
                        .padding()
                            Image("stars")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(20)
                                .frame(width: 900, height: 200)
                                .cornerRadius(20)
                                .shadow(radius:15)
                           
                    }
                    

                        
                                
                                //                            }
                                //                        }
                            }
                        
//                    }
                    
//                }
            }
        }
    }
    
}
    
    
    
    
                         
//            NavigationLink(destination: SecondView ()) {
//            label: ("Continue")
//            }
//





#Preview {
    FifthView()
}
