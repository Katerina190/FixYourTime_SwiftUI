//
//  NotificationView.swift
//  FixYourTime
//
//  Created by Ekaterina Sedova on 5.11.24.
//

import SwiftUI

struct NotificationView: View {
    
    @State private var timeIsOn = false
    @State private var timeIsOff = false
    
    var body: some View {
        NavigationStack {
            Form {
                Toggle("Morning notification", isOn: $timeIsOn)
                Toggle("Evening notification", isOn: $timeIsOff)
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        print("Saved")
                    }
                }
                }
                
            }
        }
            }
                
    


#Preview {
    NotificationView()
}
