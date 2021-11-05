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
        VStack(spacing: 160) {
            Text("Wellcome, \(user.name)!\n✌️")
                .bold()
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .foregroundColor(.black)
                .padding()
            
            Text("\(timer.counter)")
                .bold()
                .font(.system(size: 64))
                .padding()
            
            VStack(spacing: 16) {
                StartButtonView(timer: timer, action: { timer.startTimer() })
                    .padding(.bottom, 16)
                LogOutButtonView(action: logOut)
            }
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
