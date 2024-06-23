//
//  SwiftUI_SA_AppetizersApp.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 18.06.2024..
//

import SwiftUI

@main
struct SwiftUI_SA_AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
