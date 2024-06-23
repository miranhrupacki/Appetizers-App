//
//  EmptyState.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 21.06.2024..
//

import SwiftUI

struct EmptyState: View {
    let imageName: ImageResource
    let message: String

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: .emptyOrder, message: "This is our test message. \nI'm making it a little long for testing.")
}
