//
//  TipTextView.swift
//  TimerApp
//
//  Created by Василий Пронин on 04.11.2021.
//

import SwiftUI

struct TipTextView: View {
    let minValue = 3
    let maxValue = 15
    var count = 0
    
    var body: some View {
        ZStack {
            Text(
                count >= minValue
                ? "\n"
                : "Please, add \(minValue - count) more \(removeS()) to your Login!"
            )
            
            Text(
                count <= maxValue
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
        TipTextView()
    }
}

extension TipTextView {
    
    private func removeS() -> String {
        if minValue - count == 1 {
            return "character"
        } else {
            return "characters"
        }
    }
}
