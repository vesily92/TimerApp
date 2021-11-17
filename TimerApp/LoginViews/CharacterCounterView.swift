//
//  CharacterCounterView.swift
//  TimerApp
//
//  Created by Василий Пронин on 05.11.2021.
//

import SwiftUI

struct CharacterCounterView: View {
    @ObservedObject var log: LoginObserver
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 34, height: 34)
                .foregroundColor(.counterBackgroundGray)

            Text("\(log.login.count)")
                .bold()
                .foregroundColor(
                    log.colorChange
                    ? .red
                    : .green
                )
            .frame(width: 30)
        }
    }
}

struct CharacterCounterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCounterView(log: LoginObserver())
    }
}
