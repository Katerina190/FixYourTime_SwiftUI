//
//  LaunchScreenView.swift
//  FixYourTime
//
//  Created by Ekaterina Sedova on 30.09.24.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Image("launchImage", bundle: nil)
                    .scaledToFill()
                Text("Your little assistant in time managment")
                    .font(.custom("Helvetica Neue", size: 35.0))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(width: 460, height: 300, alignment: .center)
                    .multilineTextAlignment(.center)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    LaunchScreenView()
}
