//
//  DataManager.swift
//  TimerApp
//
//  Created by Василий Пронин on 16.11.2021.
//

import SwiftUI

class DataManager {
    
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(_ user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func loadUser() -> User {
        guard let user = try? JSONDecoder().decode(
            User.self,
            from: userData ?? Data()
        ) else { return User() }
        
        return user
    }
    
    func clear(_ userManager: UserManager) {
        userManager.user.isLoggedIn = false
        userManager.user.name = ""
        
        userData = nil
    }
}
