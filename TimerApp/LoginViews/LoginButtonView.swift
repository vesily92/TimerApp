//
//  LoginButtonView.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct LoginButtonView: View {
    let action: () -> Void
    var check = false
    
    var body: some View {
        Button(action: action) {
            Text("sign in")
                .bold()
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 180, height: 60)
        .background(
            check
            ? .blue
            : Color.disabledButtonGray
        )
        .cornerRadius(20)
        .disabled(!check)
    }
}

struct Button2_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView(action: {}, check: false)
    }
}
