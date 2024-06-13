//
//  ThirdView.swift
//  ecotiqueHomePage
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct ThirdView: View {
    @Binding var text: String
    @State private var brand = "Forever 21"
    let brands = ["Forever 21", "SHEIN"]
    
    @State private var character = "XXS-M"
    let sizes = ["XXS-M", "L-XXL"]
    
    @State private var location = "Dallas"
    let locations = ["Dallas", "Austin"]
    
    @State private var style = "Casual/Streetwear"
    let styles = ["Casual/Streetwear", "Athleisure"]
    
    @State private var budget = "$50 MAX"
    let budgets = ["$50 MAX", "$100 MAX"]
    
    @State private var recommendation = ""

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.9647, green: 0.7529, blue: 0.7765)
                            .edgesIgnoringSafeArea(.all)
                        .ignoresSafeArea()
            VStack{
                VStack {
                    
                    Text("PERSONALIZE YOUR PROFILE")
                        .font(.custom("Futura", fixedSize: 23))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.149, green: -0.001, blue: 0.0))
                        .padding()
                                            
                    Text("Select a brand you currently shop from:")
                        .font(.custom("Futura", fixedSize: 19))
                        .font(.title3)
                        .foregroundColor(Color(red: 0.149, green: -0.001, blue: 0.0))
                        .padding(10.0)
                
                    
                    Picker("Select a paint color", selection: $brand) {
                        ForEach(brands, id: \.self) {
                            Text($0)
                            
                        }
                    }
                    .pickerStyle(.menu)
                    .accentColor(Color(red: 0.501, green: 0.351, blue: 0.482))

                    
                    
                    
                    
                    
                    Text("Select your usual clothing size:")
                        .font(.custom("Futura", fixedSize: 19))
                        .font(.title3)
                        .foregroundColor(Color(red: 0.149, green: -0.001, blue: 0.0))
                    Picker("Select a paint color", selection: $character) {
                        ForEach(sizes, id: \.self) {
                            Text($0)
                        
                        }
                    }
                    .pickerStyle(.menu)
                    .accentColor(Color(red: 0.501, green: 0.351, blue: 0.482))



                    
                    
                    
                    
                    
                    Text("Select your location:")
                        .font(.custom("Futura", fixedSize: 19))
                        .font(.title3)
                        .foregroundColor(Color(red: 0.149, green: -0.001, blue: 0.0))
                    Picker("Select a paint color", selection: $location) {
                        ForEach(locations, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                    .accentColor(Color(red: 0.501, green: 0.351, blue: 0.482))


                    
                }
                
                VStack{
                    
                    Text("Select your style:")
                        .font(.custom("Futura", fixedSize: 19))
                        .font(.title3)
                        .foregroundColor(Color(red: 0.149, green: -0.001, blue: 0.0))
                    Picker("Select a paint color", selection: $style) {
                        ForEach(styles, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                    .accentColor(Color(red: 0.501, green: 0.351, blue: 0.482))


                    
                    
                    
                    
                    
                    Text("Select your budget:")
                        .font(.custom("Futura", fixedSize: 19))
                        .font(.title3)
                        .foregroundColor(Color(red: 0.149, green: -0.001, blue: 0.0))
                    Picker("Select a paint color", selection: $budget) {
                        ForEach(budgets, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                    .accentColor(Color(red: 0.501, green: 0.351, blue: 0.482))

                    

                    
                    Button("Done") {
        
                        
                        if (brand == "Forever 21" && style == "Casual/Streetwear" && budget == "$50 MAX") {
                        
                            recommendation = "Shop at EVERLANE!"
                        }
                        
                        if (brand == "Forever 21" && style == "Casual/Streetwear" && budget == "$100 MAX") {
                        
                            recommendation = "Shop at TENTREE!"
                        }
                        
                        if (brand == "Forever 21" && style == "Athleisure" && budget == "$100 MAX") {
                        
                            recommendation = "Shop at GIRLFRIEND COLLECTIVE!"
                        }
                        
                        if (brand == "Forever 21" && style == "Athleisure" && budget == "$50 MAX") {
                        
                            recommendation = "Shop at PACT!"
                        }
                        
                        if (brand == "SHEIN" && style == "Casual/Streetwear" && budget == "$50 MAX") && location == "Austin" {
                        
                            recommendation = "Shop at TREASURE CITY THRIFT!"
                        }
                        
                        if (brand == "SHEIN" && style == "Casual/Streetwear" && budget == "$100 MAX") && location == "Austin" {
                        
                            recommendation = "Shop at TREASURE CITY THRIFT!"
                        }
                        
                        if (brand == "SHEIN" && style == "Casual/Streetwear" && budget == "$50 MAX") && location == "Dallas" {
                        
                            recommendation = "Shop at 2nd STREET!"
                        }
                        
                        if (brand == "SHEIN" && style == "Casual/Streetwear" && budget == "$100 MAX") && location == "Dallas" {
                        
                            recommendation = "Shop at 2nd STREET!"
                        }
                        
                        if (brand == "SHEIN" && style == "Athleisure" && budget == "$100 MAX") {
                        
                            recommendation = "Shop at THREADS 4 THOUGHT!"
                        }
                        
                        if (brand == "SHEIN" && style == "Athleisure" && budget == "$50 MAX") {
                        
                            recommendation = "Shop at BOODY!"
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.149, green: -0.001, blue: 0.0, opacity: 1.0))
                    .foregroundColor(Color(hue: 0.1, saturation: 0.231, brightness: 0.937))
                    .padding()
                                    
            
                    Text(recommendation)
                        .font(.custom("Futura", fixedSize: 23))
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.149, green: -0.001, blue: 0.0))
                        .padding()
                    
                    
                    
                    
                    
                
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: FourthView (text: $text)) {
                        Text("Continue")
                            .foregroundColor(Color(red: 0.501, green: 0.351, blue: 0.482))
                            
    
                    }
                }
            }
            }
            
        }
    }
}

//#Preview {
//    ThirdView()
//}

