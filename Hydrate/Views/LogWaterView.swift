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
        GeometryReader { geometry in
            ZStack {
                Color("backgroundgray")
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    VStack(spacing: 275) {
                        HStack(spacing: 5) {
                            Image(systemName: "drop")
                                .resizable()
                                .frame(width: 150, height: 220)
                            
                            VStack(spacing: 25) {
                                Text("Adding: \(logged_amount) oz")
                                    .font(.title)
                                
                                VStack {
                                    Text("New total: ")
                                        .font(.title)
                                    Text("\(calc_total_drank()) oz")
                                        .font(.title)
                                }
                            }
                            .frame(width: geometry.size.width * 0.4)
                            .padding()

                        }
                        
                        VStack {
                            HStack {
                                if logged_amount < 48 {
                                    Button("Increment 6 oz") {
                                        increment()
                                    }
                                    .frame(width: geometry.size.width * 0.35, height: 40)
                                    .modifier(EnabledButton())
                                } else {
                                    Text("Increment 6 oz")
                                    .frame(width: geometry.size.width * 0.35, height: 40)
                                    .background(.gray)
                                    .padding()
                                }
                                
                                if calc_total_drank() > 0 && logged_amount > 0 {
                                    Button("Decrement 6 oz") {
                                        decrement()
                                    }
                                    .frame(width: geometry.size.width * 0.35, height: 40)
                                    .modifier(EnabledButton())
                                } else {
                                    Text("Decrement 6 oz")
                                    .frame(width: geometry.size.width * 0.35, height: 40)
                                    .background(.gray)
                                    .padding()
                                }
                            }
                        }
                    }
                    .frame(width: geometry.size.width * 0.85, height: geometry.size.height * 0.85)
                    
                    Button("Save") {
                        drank_today = drank_today + logged_amount
                        dismiss()
                    }
                    .padding()
                    .font(.headline)
                    .border(.gray)
                }
            }
        }
        .foregroundColor(.white)
    }

    
    func increment() {
        logged_amount += 6
    }
    
    func decrement() {
        logged_amount -= 6
    }
    
    func calc_total_drank() -> Int {
        return drank_today + logged_amount
    }
}

struct EnabledButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.blue)
            .padding()
    }
}

struct LogWaterView_Previews: PreviewProvider {
    static var previews: some View {
        LogWaterView(drank_today: .constant(28))
    }
}
