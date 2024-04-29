//
//  AuthenticationView.swift
//  SwiftUIWithFirebase
//
//  Created by Murat Işık on 28.04.2024.
//

import SwiftUI

struct AuthenticationView: View {
    let emailSıgnButton: String = "Sıgn In With Email"
    let appleSıgnButton: String = "Sıgn In With Apple"
    let googleSıgnButton: String = "Sıgn In With Google"
    let emailLogo: String  = "envelope.circle"
    let appleLogo: String = "apple.logo"
    let googleLogo: String = "g.circle"
    
    var body: some View {
        VStack{
            
            NavigationStack {
                Image("bookWall2")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color.red, radius: 50)
                NavigationLink {
                    SignInEmailView()
                } label: {
                   
                    SıgnInButtonView(buttonName: emailSıgnButton, signLogo: emailLogo)
                        
                    
                }
                .navigationTitle("Kesit Okur")
                .padding(30)
                
                NavigationLink {
                    SecondScreenView()
                } label: {
                    SıgnInButtonView(buttonName: appleSıgnButton, signLogo: appleLogo)
                }
                .padding(.horizontal,30)
                
                NavigationLink {
                    SecondScreenView()
                } label: {
                    SıgnInButtonView(buttonName: googleSıgnButton, signLogo: googleLogo )
                }
                .padding(30)
            }
        }
        
    }
}

#Preview {
    AuthenticationView()
}


struct SecondScreenView: View {
    var body: some View {
        VStack{
            Text("Kesitokur'a Hoşgeldiniz!!")
        }
    }
}

struct SıgnInButtonView: View {
    let buttonName: String
    let signLogo: String
    var body: some View {
        HStack {
            Text(buttonName)
                .font(.title)
                .foregroundColor(.black)
                .padding(.vertical,5)
                
                .textScale(Text.Scale.secondary)
               
            Image(systemName: signLogo)
                .resizable()
                .frame(width:25, height: 25)
                .padding(.horizontal, 20)
               
        }.frame(width: 300, height: 50)
       
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                    
            )
            
       
    }
}
