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
        VStack(spacing: 20) {
            Spacer()
            VStack {
                VStack {
                    Text("Amount Drank:")
                        .font(.largeTitle)
                    HStack {
                        TextField("", value: $logged_amount, format: .number)
                            .keyboardType(.numberPad)
                            .fixedSize()
                            .font(.largeTitle)
                        
                        Picker("Units", selection: $selected_unit) {
                            ForEach(units, id: \.self) {
                                Text($0)
                                    .font(.largeTitle)
                            }
                        }
                    }
                }
                VStack{
                    Text("Total Drank Today:")
                        .font(.largeTitle)
                    HStack {
                        Text("\(calc_total_drank())")
                            .font(.largeTitle)
                        Text("oz")
                            .font(.largeTitle)
                    }
                }
            }
            Spacer()
            Button("Log Water") {
                drank_today = drank_today + logged_amount
                dismiss()
            }
        }
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
