//
//  DismissXButton.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 20.06.2024..
//

import SwiftUI

struct DismissXButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    DismissXButton()
}
