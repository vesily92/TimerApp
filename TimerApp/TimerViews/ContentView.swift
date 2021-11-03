//
//  ContentView.swift
//  TimerApp
//
//  Created by Василий Пронин on 02.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = Counter()
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)!")
                .font(.largeTitle)
                .padding()
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding()
            Spacer()
            StartButtonView(action: { timer.startTimer() }, timer: timer)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonStyleView: View {
    
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
    }
}
