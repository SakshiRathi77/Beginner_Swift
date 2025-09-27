//
//  AccountView.swift
//  Appetizers
//
//  Created by Sakshi Rathi on 31/08/25.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    

    
    
    var body: some View {
        NavigationView{
            Form{
                Section(header : Text("Personal Info")){
                    TextField("First Name", text: $viewModel.firstName )
                        .autocorrectionDisabled(true)
                    TextField("Last Name", text: $viewModel.lastName )
                        .autocorrectionDisabled()
                    TextField("Email", text: $viewModel.email ).keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    DatePicker("BirthDay", selection:$viewModel.birthday, displayedComponents: .date)
                    
                    Button{
                        print("Save")
                    } label : {
                        Text("Save Changes")
                    }
                    
                    
                }
                
                Section(header : Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkin)
                    Toggle("Extra Disposals", isOn: $viewModel.Disposals)
                }.toggleStyle(SwitchToggleStyle(tint: .brandPrimaryColor))
            }
                    .navigationTitle("👤Account")
            }
        .alert(item : $viewModel.alertItem){
            alertItem in (title: alertItem?.title, message: alertItem?.message, dismissButton:alertItem.dismissButton )
        }
    }
}

#Preview {
    AccountView()
}
