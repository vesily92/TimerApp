//
//  LoginTextFieldView.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct LoginTextFieldView: View {
    @ObservedObject var log: LoginObserver
    
    var body: some View {
        HStack {
            TextField("Login", text: $log.login)
                .onChange(of: log.login) { _ in
                    log.inputCheck()
                }
                .textFieldStyle(.roundedBorder)
                .foregroundColor(
                    log.colorChange
                    ? .disabledTextGray
                    : .black
                )
            CharacterCounterView(log: log)
        }
    }
}

struct TextField2_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextFieldView(log: LoginObserver())
    }
}
