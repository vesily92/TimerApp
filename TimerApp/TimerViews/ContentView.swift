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
            Text("Wellcome, \(user.name)!\n✌️")
                .bold()
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .foregroundColor(.black)
                .padding()
            Spacer()
            Text("\(timer.counter)")
                .bold()
                .font(.system(size: 64))
                .padding()
            Spacer()
            VStack(spacing: 32) {
                StartButtonView(timer: timer, action: { timer.startTimer() })
                LogOutButtonView(action: logOut)
            }
            .padding(.bottom, 32)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    private func logOut() {
        if user.isLoggedIn {
            user.isLoggedIn = false
        }
    }
}
