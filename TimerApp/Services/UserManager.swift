//
//  UserManager.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

final class UserManager: ObservableObject {
    @Published var user = User()
    
    let minValue = 3
    let maxValue = 15
    var characterCount: Int {
        user.name.count
    }
    var nameIsValid: Bool {
        characterCount >= minValue && characterCount <= maxValue
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isLoggedIn = false
}
