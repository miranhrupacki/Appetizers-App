//
//  OrderView.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 18.06.2024..
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.delete(at: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("order placed")
                    } label: {
                        Text("$\(order.totalPrice) - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: .emptyOrder, message: "You have no items in your order. Please add an appetizer.")
                }
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    OrderView()
}
