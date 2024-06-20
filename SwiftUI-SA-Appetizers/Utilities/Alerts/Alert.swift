//
//  Alert.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 19.06.2024..
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message:  Text("The data receive from the server was invalid. Please contact support."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title:  Text("Server Error"),
                                              message:  Text("Invalid response from the server. Please try again later or contact support."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title:  Text("Server Error"),
                                              message:  Text("There was an issue connecting to the server. If this persists, please contact support."),
                                              dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title:  Text("Server Error"),
                                              message:  Text("Unable to complete your request at this time. Pleace check your internet connection."),
                                              dismissButton: .default(Text("OK")))
}
