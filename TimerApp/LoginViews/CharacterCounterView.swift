//
//  LetterCounterView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct CharacterCounterView: View {
    
    @Binding var login: String
    
    var body: some View {
        Text("\(login.count)")
            .bold()
            .foregroundColor(login.count < 3 ? .red : .green)
            .frame(width: 30)
            .multilineTextAlignment(.trailing)
    }
}

struct LetterCounterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCounterView(login: .constant("Bob"))
    }
}
