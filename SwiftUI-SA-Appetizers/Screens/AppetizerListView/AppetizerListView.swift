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
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer ?? MockData.sampleAppetizer, isShowingDetails: $viewModel.isShowingDetail)
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
