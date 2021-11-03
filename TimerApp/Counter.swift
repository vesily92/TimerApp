//
//  Counter.swift
//  TimerApp
//
//  Created by Василий Пронин on 02.11.2021.
//

import Foundation
import Combine
import SwiftUI

class Counter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<Counter, Never>()
    var counter = 3
    var timer: Timer?
    var buttonText = "start ⏱"
    var colorChange = false
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonTapped()
    }
    
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            stopTimer()
            buttonText = "reset 🔄"
            colorChange = false
        }
        objectWillChange.send(self)
    }
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonTapped() {
        if buttonText == "reset 🔄" {
            counter = 3
            buttonText = "start ⏱"
            colorChange = false
        } else {
            buttonText = "wait..."
            colorChange = true
        }
        objectWillChange.send(self)
    }
}
