//
//  TipTextView.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct TipTextView: View {
    
    @ObservedObject var log: LoginObserver
    
    var body: some View {
        ZStack {
            Text(
                log.login.count >= log.minCharacters
                ? "\n"
                : "Please, add \(log.minCharacters - log.login.count) more \(removeS()) to your Login!"
            )
            
            Text(
                log.login.count <= log.maxCharacters
                ? "\n"
                : "Your Login must not contain more than 15 characters!"
            )
        }
        .multilineTextAlignment(.leading)
        .foregroundColor(.gray)
        .opacity(0.8)
        .font(.subheadline)
    }
}

struct TipTextView_Previews: PreviewProvider {
    static var previews: some View {
        TipTextView(log: LoginObserver())
    }
}

extension TipTextView {
    
    private func removeS() -> String {
        if log.minCharacters - log.login.count == 1 {
            return "character"
        } else {
            return "characters"
        }
    }
}
