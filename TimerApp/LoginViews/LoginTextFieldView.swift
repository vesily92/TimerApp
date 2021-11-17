//
//  LoginTextFieldView.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct LoginTextFieldView: View {
    @Binding var name: String
    
    var count = 0
    var check = false
    
    var body: some View {
        HStack {
            TextField("Login", text: $name)
                .textFieldStyle(.roundedBorder)
                .foregroundColor(
                    check
                    ? .disabledTextGray
                    : .black
                )
            CharacterCounterView(count: count, check: check)
        }
    }
    
    
    
//    {
//        HStack {
//            TextField("Login", text: $name)
//                .textFieldStyle(.roundedBorder)
//                .foregroundColor(
//                    userManager.nameIsValid
//                    ? .disabledTextGray
//                    : .black
//                )
//            CharacterCounterView(log: log)
//        }
//    }
}

struct TextField2_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextFieldView(name: .constant("name"))
    }
}
