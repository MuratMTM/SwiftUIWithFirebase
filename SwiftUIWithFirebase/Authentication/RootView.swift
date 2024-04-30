//
//  RootView.swift
//  SwiftUIWithFirebase
//
//  Created by Murat Işık on 30.04.2024.
//

import SwiftUI

struct RootView: View {
    @State private var showSignInView: Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack{
               Text("Settings")
            }
        }
        .onAppear{
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil 
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack{
                AuthenticationView()
            }
        }
    }
}

#Preview {
    RootView()
}
