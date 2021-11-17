//
//  CharacterCounterView.swift
//  TimerApp
//
//  Created by Василий Пронин on 05.11.2021.
//

import SwiftUI

struct CharacterCounterView: View {
    var count = 0
    var check = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 34, height: 34)
                .foregroundColor(.counterBackgroundGray)

            Text("\(count)")
                .bold()
                .foregroundColor(
                    check
                    ? .green
                    : .red
                )
            .frame(width: 30)
        }
    }
}

struct CharacterCounterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCounterView(count: 4, check: true)
    }
}
