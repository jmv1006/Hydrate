//
//  SettingsView.swift
//  Hydrate
//
//  Created by Jonathan Andrade Valenzuela on 2/28/23.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var preferences: UserPreferences
    
    var body: some View {
        VStack{
            Form {
                Text("Username")
            }
            .border(.red)
        }
    }
}


var testPref = UserPreferences()
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(testPref)
    }
}
