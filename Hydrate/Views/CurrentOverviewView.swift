//
//  CurrentOverviewView.swift
//  Hydrate
//
//  Created by Jonathan Andrade Valenzuela on 2/28/23.
//

import SwiftUI

struct CurrentOverviewView: View {
    var total_drank: Int
    var goal: Int
    
    var body: some View {
        VStack(spacing: 20) {
            
            if total_drank >= goal {
                Text("You've met your goal. Keep on drinking!")
                    .font(.title2)
            }
            
            Text("Amount Drank Today:")
                .font(.largeTitle)
            HStack {
                Text("\(total_drank)")
                    .font(.largeTitle)
                Text("oz")
                    .font(.largeTitle)
            }
            Text("Goal:")
                .font(.largeTitle)
            HStack {
                Text("\(goal)")
                    .font(.largeTitle)
                Text("oz")
                    .font(.largeTitle)
            }
        }
    }
}


struct CurrentOverviewPreview: PreviewProvider {
    static var previews: some View {
        CurrentOverviewView(total_drank: 16, goal: 32)
    }
}
