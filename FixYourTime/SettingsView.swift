//
//  SettingsView.swift
//  FixYourTime
//
//  Created by Ekaterina Sedova on 1.10.24.
//

import SwiftUI

struct SettingsView: View {
   
    var body: some View {
        NavigationStack {
            List {
                    ForEach(settingsCases) { settingCase in
                        Section(header: Text(settingCase.groupName)) {
                            ForEach(settingCase.members) { member in
                                NavigationLink(destination: member.destinationView) {
                                            Text(member.caseName)
                                        }
                                }
                            }
                        }
                    }.navigationTitle("Settings")
        }
            }
        }

struct SettingsGroup: Identifiable {
    var id = UUID()
    var groupName: String
    var members: [Choice]
    
}

struct Choice: Identifiable {
    var id = UUID()
    var caseName: String
    var destinationView: AnyView
}

let settingsCases = [
    SettingsGroup(groupName: "Main", members: [
        Choice(caseName: "Notification", destinationView: AnyView(NotificationView())),
        Choice(caseName: "Language", destinationView: AnyView(NotificationView())),
        Choice(caseName: "Appearance", destinationView: AnyView(AppearanceView()))
    ]),
    SettingsGroup(groupName: "Additional", members: [
        Choice(caseName: "Privacy Policy", destinationView: AnyView(NotificationView())),
        Choice(caseName: "Term Of Use", destinationView: AnyView(NotificationView()))
    ])
]



#Preview {
    SettingsView()
}
