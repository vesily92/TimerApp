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
                    ? .textGray
                    : .black
                )
            
            CharCount2(log: log)
        }
    }
}

struct TextField2_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextFieldView(log: LoginObserver())
    }
}

struct CharCount2: View {
    
    @ObservedObject var log: LoginObserver
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 34, height: 34)
                .foregroundColor(.backgroundGray)

            Text("\(log.login.count)")
                .bold()
                .foregroundColor(
                    log.colorChange
                    ? .red
                    : .green
                )
            .frame(width: 30)
        }
    }
}
