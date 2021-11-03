//
//  TipTextView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct TipTextView: View {
    
    @Binding var login: String
    
    var body: some View {
        Text(login.count >= 3
             ? "\n"
             : "Please, add \(3 - login.count) more \(removeS()) to your Login!")
            .foregroundColor(.gray)
            .opacity(0.8)
            .font(.subheadline)
    }
    private func removeS() -> String {
        if 3 - login.count == 1 {
            return "character"
        } else {
            return "characters"
        }
    }
}
