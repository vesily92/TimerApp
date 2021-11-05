//
//  LogOutButtonView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct LogOutButtonView: View {
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Button(action: logOut) {
            Text("Log out")
                .font(.system(size: 20))
                .foregroundColor(.blue)
        }
    }
    
    private func logOut() {
        if user.isLoggedIn == true {
            user.isLoggedIn.toggle()
        }
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
