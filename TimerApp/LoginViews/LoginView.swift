//
//  LoginView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct LoginView: View {
    
    @State private var login = ""
    @State private var showAlert = false
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        ZStack {
            BackgroundColorView()
            VStack {
                HStack {
                    LoginTFView(login: $login)
                    ZStack {
                        CounterBackgroundRectangleView()
                        CharacterCounterView(login: $login)
                    }
                    .padding(.trailing, 30)
                }
                TipTextView(login: $login)
                    .padding(
                        EdgeInsets(top: 0, leading: 30, bottom: 50, trailing: 70)
                    )
                SignInButtonView(action: logInUser, login: $login)
            }
            .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 20))
            .background(Color.white)
            .cornerRadius(40)
            .padding()
        }
    }
    
//    private func checkInput() {
//        if login.count < 4 {
//            return
//        }
//        showAlert.toggle()
//        login = ""
//    }
    
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

struct CounterBackgroundRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: 34, height: 34)
            .foregroundColor(
                Color(red: 0.97, green: 0.97, blue: 0.97)
            )
    }
}

struct LoginTFView: View {
    
    @Binding var login: String
    
    var body: some View {
        
        TextField("Login", text: $login)
            .textFieldStyle(.roundedBorder)
            .padding(.leading, 30)
    }
}
