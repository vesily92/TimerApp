//
//  LogOutButtonView.swift
//  TimerApp
//
//  Created by Василий Пронин on 03.11.2021.
//

import SwiftUI

struct LogOutButtonView: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Log out")
                .font(.system(size: 20))
                .foregroundColor(.blue)
        }
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView(action: {})
    }
}
