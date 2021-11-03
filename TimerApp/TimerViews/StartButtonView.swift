//
//  StartButtonView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct StartButtonView: View {
    
    let action: () -> Void
    
    @ObservedObject var timer: Counter
    
    var body: some View {
        Button(action: action) {
            Text(timer.buttonText)
                .bold()
                .font(.title)
                .foregroundColor(.white)
                .offset(x: 5)
                
        }
        .frame(width: 180, height: 60)
        .background(
            timer.colorChange
            ? Color(red: 0.9, green: 0.9, blue: 0.9)
            : .orange)
        .cornerRadius(20)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(action: {}, timer: Counter())
    }
}
