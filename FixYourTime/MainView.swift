//
//  MainView.swift
//  FixYourTime
//
//  Created by Ekaterina Sedova on 1.10.24.
//

import SwiftUI

struct MainView: View {
    @State private var initPhrase: String = ""
    @State private var hello: String = "What are you doing right now?"
    
    var body: some View {
        VStack {
            TextField(hello, text: $initPhrase)
                .padding(20)
            Button("Start!")
            {
                
            }
            .bold()
            
            
        }
    }
}

#Preview {
    MainView()
}
