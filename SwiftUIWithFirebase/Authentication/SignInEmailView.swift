//
//  SignInEmailView.swift
//  SwiftUIWithFirebase
//
//  Created by Murat Işık on 29.04.2024.
//

import SwiftUI

final class SignInEmailViewModel: ObservableObject {
    @Published var emailAdress: String = ""
    @Published var emailPassword: String = ""
    
}

struct SignInEmailView: View {
    @StateObject private var viewModel = SignInEmailViewModel()
    var body: some View {
        VStack(spacing: 20){
            TextField("Email...", text: $viewModel.emailAdress)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.green, lineWidth: 1)
                )
            
            SecureField("Password...", text: $viewModel.emailPassword)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.green, lineWidth: 1)
                )
            
            Button(action: {
                
            }, label: {
                Text("Sign In")
                    .padding(.horizontal,50)
                    .padding(.vertical, 10)
                    .foregroundStyle(Color.white.opacity(0.8))
                    
            })
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
            
            
            Spacer()
        }.navigationTitle("Sign With Email")
        .padding()
        
    }
}

#Preview {
    NavigationStack {
        SignInEmailView()
    }
}
