//
//  AccountView.swift
//  SwiftUI-SA-Appetizers
//
//  Created by Miran Hrupački on 18.06.2024..
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .textInputAutocapitalization(.words)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .textInputAutocapitalization(.words)
                    TextField("Email Name", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }, header: {
                    Text("Personal Info")
                })
                
                Section(content: {
                    Toggle(isOn: $viewModel.user.extraNapkins, label: { Text("Extra Napkins") })
                    Toggle(isOn: $viewModel.user.frequentRefills, label: { Text("Frequent Refills") })
                }, header: {
                    Text("Requests")
                })
                .toggleStyle(.switch)
                .tint(.brandPrimary)
            }
            .navigationTitle("👨‍💼 Account")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
