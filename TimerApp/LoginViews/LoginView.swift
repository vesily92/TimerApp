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
    
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack {
            BackgroundColorView()
            
            VStack {
                LoginTFView(login: $login)
                TipTextView(login: $login)
                    .padding(.bottom, 20)
                
                SignInButtonView(action: logIn, login: $login)
            }
            .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 20))
            .background(Color.white)
            .cornerRadius(40)
            .padding()
        }
        .focused($isFocused)
        .onTapGesture { hideKeyboard() }
    }
    
    private func logIn() {
        if login.count >= 3 {
            user.name = login
            user.isLoggedIn.toggle()
        }
    }
}

struct OldLoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct BackgroundColorView: View {
    var body: some View {
        LinearGradient(
            colors: [.blue, .purple],
            startPoint: .top,
            endPoint: .bottom
        )
            .opacity(0.5)
            .ignoresSafeArea()
    }
}


extension View {
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}
