//
//  CharacterCounterView.swift
//  TimerApp
//
//  Created by Василий Пронин on 05.11.2021.
//

import SwiftUI

struct CharacterCounterView: View {
    
    @Binding var login: String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 34, height: 34)
                .foregroundColor(.counterBackgroundGray)
            
            Text("\(login.count)")
                .bold()
                .foregroundColor(
                    login.count < 3 || login.count > 15
                    ? .red
                    : .green
                )
            .frame(width: 30)
        }
    }
}

struct CharacterCounterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCounterView(login: .constant("Login"))
    }
}
