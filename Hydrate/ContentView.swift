//
//  ContentView.swift
//  Hydrate
//
//  Created by Jonathan Andrade Valenzuela on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    @State var total_drank = 28
    @State var goal = 64
    
    @EnvironmentObject var preferences: UserPreferences
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear")
                            .resizable()
                            .frame(width: 28, height: 28)
                    }
                    .padding(.trailing)
                }
                
                Spacer()
                
                CurrentOverviewView(total_drank: total_drank, goal: goal)
                
                Spacer()
                Spacer()
                
                NavigationLink {
                    LogWaterView(drank_today: $total_drank)
                } label: {
                    Text("Log Water")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserPreferences())
    }
}
