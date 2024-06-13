//
//  SecondView.swift
//  ecotiqueProject
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct SecondView: View {
    @State var showingTextField = false
    @State private var text = ""
    @State private var email = ""
    var body: some View {
        
        NavigationStack {
        
            ZStack{
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                    .edgesIgnoringSafeArea(.top)
                
                VStack{
                    TextField("Enter Name", text: $text)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .padding()
                    
                    TextField("Email", text: $email)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .padding()
                
                    NavigationLink(destination: ThirdView(text: $text)) {
                        Text("Continue")
                            .foregroundColor(Color(red: 0.498, green: 0.351, blue: 0.482))
                    }
                    
                }
                
            }
//            NavigationLink(destination: SecondView ()) {
//            label: ("Continue")
//            }
//

        }
    }
}

        
            
    #Preview {
                SecondView()
    }

