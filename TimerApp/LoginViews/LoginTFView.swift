//
//  LoginTFView.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct LoginTFView: View {
    
    @Binding var login: String
    
    var body: some View {
        HStack {
            TextField("Login", text: $login)
                .textFieldStyle(.roundedBorder)
                .foregroundColor(
                    login.count < 3 || login.count >= 15
                    ? .black
                    : .disabledTextGray
            )
            
            CharacterCounterView(login: $login)
        }
    }
}

struct LoginTFView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTFView(login: .constant("Login"))
    }
}


