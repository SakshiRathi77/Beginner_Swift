//
//  AddView.swift
//  TodoApp
//
//  Created by Sakshi Rathi on 21/09/25.
//

import SwiftUI
struct AddView : View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var ListViewModel: ListViewModel
    
    @State var textFieldText : String = ""
    
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type Something here ", text: $textFieldText)
                    .padding()
                    .frame(height: 50)
                    .background(Color(.lightGray).opacity(0.2))
                    .cornerRadius(10)
                
                Button(action: {
                    saveButtonPressed()
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(20)
                        .font(.headline)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
            
        }
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButtonPressed()
    {
        if(textIsAppropriate()){
            ListViewModel.addNewItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsAppropriate() -> Bool {
        if(textFieldText.count<3){
            alertTitle="Your new todo item must be atleast 3 char long! 😢"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
