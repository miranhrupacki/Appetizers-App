//
//  CustomModifiers.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 21.06.2024..
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
