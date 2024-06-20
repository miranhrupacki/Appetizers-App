//
//  ConfirmButton.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 20.06.2024..
//

import SwiftUI

struct ConfirmButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 260, height: 50)
            .background(.brandPrimary)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    ConfirmButton(title: "$11.49 - Add To Order")
}
