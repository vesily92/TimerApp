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
        }
        .frame(width: 200, height: 60)
        .background(timer.colorChange ? .gray : .red)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 5))
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(action: {}, timer: Counter())
    }
}
