//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Василий Пронин on 02.11.2021.
//

import SwiftUI

@main
struct TimerAppApp: App {
    
    @StateObject private var userManager = UserManager()
    var body: some Scene {
        WindowGroup {
            InitialView()
                .environmentObject(userManager)
        }
    }
}
