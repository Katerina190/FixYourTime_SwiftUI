//
//  AppearanceView.swift
//  FixYourTime
//
//  Created by Ekaterina Sedova on 5.11.24.
//

import SwiftUI

struct AppearanceView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("System")
                Text("Light")
                Text("Dark")
            }
            .navigationTitle("Appearance")
        }
    }
}

#Preview {
    AppearanceView()
}
