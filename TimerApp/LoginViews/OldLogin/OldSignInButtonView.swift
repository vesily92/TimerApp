//
//  SignInButtonView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct OldSignInButtonView: View {
    
    let action: () -> Void
    
    @Binding var login: String
    
    var body: some View {
        Button(action: action) {
            Text("sign in")
                .bold()
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 180, height: 60)
        .background(
            login.count < 3 || login.count > 15
            ? Color.disabledButtonGray
            : .blue
        )
        .cornerRadius(20)
        .disabled(
            login.count < 3 || login.count > 15
            ? true
            : false
        )
    }
}

struct SignInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OldSignInButtonView(action: {}, login: .constant("Bob"))
    }
}
