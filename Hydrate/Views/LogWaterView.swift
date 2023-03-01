//
//  LogWaterView.swift
//  Hydrate
//
//  Created by Jonathan Andrade Valenzuela on 2/28/23.
//

import SwiftUI

struct LogWaterView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var drank_today: Int
    @State var logged_amount = 12
    @State var selected_unit = "oz"
    
    var units = ["oz", "liters", "cups"]
    
    var body: some View {
        ZStack {
            Color("backgroundgray")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                VStack(spacing: 25) {
                    HStack(spacing: 40) {
                        Image(systemName: "drop")
                            .resizable()
                            .frame(width: 150, height: 200)
                        
                        Text("Units Here")
                    }
                    .frame(height: 550)
                    .padding()
                    .border(.red)
                    
                    HStack(spacing: 50) {
                        Text("Increment")
                        Text("Decrement")
                    }
                    .border(.gray)
                }
                
                Spacer()
                
                Button("Log Water") {
                    drank_today = drank_today + logged_amount
                    dismiss()
                }
                .padding()
                .font(.headline)
                .border(.gray)
            }
        }
        .foregroundColor(.white)
    }
    
    func calc_total_drank() -> Int {
        return drank_today + logged_amount
    }
}

struct LogWaterView_Previews: PreviewProvider {
    static var previews: some View {
        LogWaterView(drank_today: .constant(28))
    }
}
