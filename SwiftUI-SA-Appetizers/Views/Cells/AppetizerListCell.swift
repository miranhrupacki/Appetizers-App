//
//  AppetizerListCell.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 18.06.2024..
//

import SwiftUI


struct AppetizerListCell: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 120, height: 90)
                .clipShape(.buttonBorder)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.bold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
