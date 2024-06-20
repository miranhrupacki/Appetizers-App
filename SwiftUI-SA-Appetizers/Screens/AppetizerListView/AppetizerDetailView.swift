//
//  AppetizerDetailView.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 20.06.2024..
//

import SwiftUI

struct AppetizerDetailView: View {
    var appetizer: Appetizer
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                       .frame(maxWidth: .infinity, maxHeight: 300)
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .font(.title.weight(.regular))
                    .padding()
                    .background(.white)
                    .foregroundColor(.black)
                    .clipShape(Circle())
            }
            .padding()
        }
        

        VStack(alignment: .center, spacing: 20) {
            Text(appetizer.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.black)
            
            Text(appetizer.description)
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundStyle(.black)
                        
            HStack(spacing: 40) {
                VStack(alignment: .center, spacing: 10) {
                    Text("Calories")
                        .fontWeight(.bold)
                    Text("\(appetizer.calories)")
                }
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Carbs")
                        .fontWeight(.bold)
                    Text("\(appetizer.carbs) g")
                }
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Protein")
                        .fontWeight(.bold)
                    Text("\(appetizer.protein) g")
                }
            }
            
            Spacer()
            
            ConfirmButton(title: "$\(appetizer.price) - Add To Order")
            
            Spacer()
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}
