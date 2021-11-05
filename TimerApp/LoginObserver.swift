//
//  LoginObserver.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import Combine
import SwiftUI

class LoginObserver: ObservableObject {
    
    let objectWillChange = PassthroughSubject<LoginObserver, Never>()
    
    let minCharacters = 3
    let maxCharacters = 15
    let buttonTitle = "sign in"
    
    @Published var login = "" {
        willSet {
            objectWillChange.send(self)
        }
    }
    var colorChange = true
    var isDisabled = true
    
    func inputCheck() {
        if login.count < minCharacters || login.count > maxCharacters {
            colorChange = true
            isDisabled = true
        } else {
            colorChange = false
            isDisabled = false
        }
        objectWillChange.send(self)
    }
}
