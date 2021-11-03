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
                .font(.system(size: 64))
                .bold()
                .padding()
            
            VStack(spacing: 16) {
                StartButtonView(action: { timer.startTimer() }, timer: timer)
                    .padding(.bottom, 16)
                LogOutButtonView(action: logOut)
            }
        }
    }
    private func logOut() {
        if user.isLoggedIn == true {
            user.isLoggedIn.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
