//
//  SettingsView.swift
//  Hydrate
//
//  Created by Jonathan Andrade Valenzuela on 2/28/23.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var preferences: UserPreferences
    @State var displayName = "Jonathan"
    
    var body: some View {
        ZStack{
            Color("backgroundgray")
                .ignoresSafeArea()
            
            VStack {
                Text("Settings")
                    .font(.largeTitle)
                    .padding()
                
                VStack {
                    HStack {
                        Text("Display Name: ")
                            .font(.title2)
                        Spacer()
                    }
                    HStack {
                        Text("Units: ")
                            .font(.title2)
                        Spacer()
                    }
                }
                .padding()
                .frame(width: 350)
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}


var testPref = UserPreferences()
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(testPref)
    }
}
