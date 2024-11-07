//
//  AppearanceView.swift
//  FixYourTime
//
//  Created by Ekaterina Sedova on 5.11.24.
//

import SwiftUI

struct AppearanceView: View {
    @State private var selectedTheme: Theme = .system

    var body: some View {
        NavigationStack {
            List(Theme.allCases, id: \.self) { theme in
                HStack {
                    Text(theme.displayName)
                    Spacer()
                    if selectedTheme == theme {
                        Image(systemName: "checkmark")
                            .foregroundColor(.blue)
                    }
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedTheme = theme
                }
            }
            .navigationTitle("Appearance")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Save") {
                    print("s")
                }
            }
            .preferredColorScheme(selectedTheme.colorScheme)
        }
    }
}

struct Theme: Identifiable, Hashable {
    let id: String
    let displayName: String
    let colorScheme: ColorScheme?
    
    static let system = Theme(id: "system", displayName: "System", colorScheme: nil)
    static let light = Theme(id: "light", displayName: "Light", colorScheme: .light)
    static let dark = Theme(id: "dark", displayName: "Dark", colorScheme: .dark)
    
    static let allCases: [Theme] = [.system, .light, .dark]
}



#Preview {
    AppearanceView()
}
