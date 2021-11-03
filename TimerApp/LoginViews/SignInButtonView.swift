//
//  SignInButtonView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct SignInButtonView: View {
    
    let action: () -> Void
    
    @Binding var login: String
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: "checkmark.square")
                Text("Sign In")
            }
        }
        .disabled(login.count >= 3 ? false : true)
    }
}

struct SignInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInButtonView(action: {}, login: .constant("Bob"))
    }
}
