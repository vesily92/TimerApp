//
//  LoginButtonView.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct LoginButtonView: View {
    
    @ObservedObject var log: LoginObserver
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Button(action: logIn) {
            Text(log.buttonTitle)
                .bold()
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 180, height: 60)
        .background(
            log.colorChange
            ? Color.disabledButtonGray
            : .blue
        )
        .cornerRadius(20)
        .disabled(
            log.isDisabled
            ? true
            : false
        )
    }
    
    private func logIn() {
        user.name = log.login
        user.isLoggedIn.toggle()
    }
}

struct Button2_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView(log: LoginObserver())
    }
}
