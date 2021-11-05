//
//  InitialView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct InitialView: View {
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Group {
            if user.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
            .environmentObject(UserManager())
    }
}
