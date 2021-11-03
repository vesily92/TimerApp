//
//  LoginView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct LoginView: View {
    
    @State private var login = ""
    @EnvironmentObject private var user: UserManager
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Please, enter your name...", text: $login)
                    .multilineTextAlignment(.center)
                CharacterCounterView(login: $login)
            }
            .padding()
            
            SignInButtonView(action: logInUser, login: $login)
        }
    }
    
    private func logInUser() {
        if login.count >= 3 {
            user.name = login
            user.isLoggedIn.toggle()
        }
    }
    
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
