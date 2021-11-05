//
//  StartButtonView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct StartButtonView: View {
    
    @ObservedObject var timer: Counter
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(timer.buttonTitle)
                .bold()
                .font(.title)
                .foregroundColor(.white)
                .offset(x: 5)
                
        }
        .frame(width: 180, height: 60)
        .background(
            timer.colorChange
            ? Color.disabledButtonGray
            : .orange
        )
        .cornerRadius(20)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(timer: Counter(), action: {})
    }
}
