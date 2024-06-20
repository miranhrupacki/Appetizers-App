//
//  AppetizerListView.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 18.06.2024..
//

import SwiftUI

struct AppetizerListView: View {
    // @StateObject is used for listening and when initialized right away, if passed through views, then use @ObservedObject
    @StateObject private var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                ProgressView()
                    .controlSize(.large)
                    .progressViewStyle(.circular)
                    .tint(.brandPrimary)
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
