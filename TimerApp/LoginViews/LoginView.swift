//
//  View2.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userManager: UserManager
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack {
            BackgroundColorView()
            
            VStack {
                LoginTextFieldView(
                    name: $userManager.user.name,
                    count: userManager.characterCount,
                    check: userManager.nameIsValid
                )
                TipTextView(count: userManager.characterCount)
                    .padding(.bottom, 20)
                LoginButtonView(
                    action: logIn,
                    check: userManager.nameIsValid
                )
            }
            .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 20))
            .background(Color.white)
            .cornerRadius(40)
            .padding()
        }
        .focused($isFocused)
        .onTapGesture { isFocused.toggle() }
    }
}

struct LoginView_Previews: PreviewProvider {
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

extension LoginView {
    
    private func logIn() {
        if !userManager.user.name.isEmpty {
            userManager.user.isLoggedIn.toggle()
            DataManager.shared.save(userManager.user)
        }
    }
}

