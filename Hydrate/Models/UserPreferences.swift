//
//  UserSettings.swift
//  Hydrate
//
//  Created by Jonathan Andrade Valenzuela on 2/28/23.
//
import SwiftUI


// base units will be stored in oz. anything else will be converted for input and display purposes
class UserPreferences: ObservableObject {
    @Published var username: String = "Jonathan"
    @Published var preferred_units: String = "oz"
}
