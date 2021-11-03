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
            Text("sign in")
                .bold()
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 180, height: 60)
        .background(
            login.count >= 3
            ? .blue
            : Color(red: 0.9, green: 0.9, blue: 0.9)
        )
        .cornerRadius(20)
        .disabled(login.count >= 3 ? false : true)
    }
}

struct SignInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInButtonView(action: {}, login: .constant("Bob"))
    }
}
