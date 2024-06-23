//
//  User.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 21.06.2024..
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
