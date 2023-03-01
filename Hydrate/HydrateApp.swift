//
//  HydrateApp.swift
//  Hydrate
//
//  Created by Jonathan Andrade Valenzuela on 2/27/23.
//

import SwiftUI

@main
struct HydrateApp: App {
    @State var preferences = UserPreferences()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(preferences)
        }
    }
}
