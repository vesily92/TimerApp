//
//  UserManager.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import Combine

final class UserManager: ObservableObject {
    
    @Published var isLoggedIn = false
    
    var name = ""
}
