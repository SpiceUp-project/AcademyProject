//
//  SpicyAppApp.swift
//  SpicyApp
//
//  Created by Lara on 17/10/22.
//

import SwiftUI

@main
struct SpicyAppApp: App {
    @StateObject var shared: Shared = Shared()
    
    var body: some Scene {
        WindowGroup {
            MainNavigationView()
                .environmentObject(shared)
        }
    }
}

