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
                
                VStack(spacing: 40) {
                    Text("Hydrate")
                        .font(.largeTitle)
                    Image(systemName: "drop")
                        .resizable()
                        .frame(width: 100, height: 150)
                }
                
                Spacer()
                
                CurrentOverviewView(total_drank: total_drank, goal: goal)
                
                Spacer()
                
                NavigationLink {
                    LogWaterView(drank_today: $total_drank)
                } label: {
                    Text("Log Water")
                        .frame(width: UIScreen.main.bounds.width * 0.75, height: 40)
                        .background(.blue)
                        .padding()
                }
            }
            .background(Color("backgroundgray"))
            .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserPreferences())
    }
}
