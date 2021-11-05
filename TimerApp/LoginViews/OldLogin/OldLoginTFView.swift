//
//  LoginTFView.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct OldLoginTFView: View {
    
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
        OldLoginTFView(login: .constant("Login"))
    }
}

struct CharacterCounterView: View {
    
    @Binding var login: String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 34, height: 34)
                .foregroundColor(.counterBackgroundGray)
            
            Text("\(login.count)")
                .bold()
                .foregroundColor(
                    login.count < 3 || login.count > 15
                    ? .red
                    : .green
                )
            .frame(width: 30)
        }
    }
}
