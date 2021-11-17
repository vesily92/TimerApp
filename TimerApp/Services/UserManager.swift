//
//  UserManager.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

final class UserManager: ObservableObject {
    @AppStorage("isLoggedIn") var isLoggedIn = false
    @AppStorage("name") var name = ""
}
