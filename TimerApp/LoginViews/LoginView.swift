//
//  View2.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var loginState = LoginObserver()
    @EnvironmentObject private var user: UserManager
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack {
            BackgroundColorView()
            
            VStack {
                
                LoginTextFieldView(log: loginState)
                TipTextView(log: loginState)
                    .padding(.bottom, 20)
                
                LoginButtonView(log: loginState, action: logIn)
            }
            .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 20))
            .background(Color.white)
            .cornerRadius(40)
            .padding()
        }
        .focused($isFocused)
        .onTapGesture { hideKeyboard() }
    }
}

extension LoginView {
    
    private func logIn() {
        user.name = loginState.login
        user.isLoggedIn.toggle()
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
