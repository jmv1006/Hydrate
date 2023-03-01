//
//  UserSettings.swift
//  Hydrate
//
//  Created by Jonathan Andrade Valenzuela on 2/28/23.
//
import SwiftUI

class UserPreferences: ObservableObject {
    @Published var username: String = "Jonathan"
    @Published var preferred_units: String = "oz"
}
