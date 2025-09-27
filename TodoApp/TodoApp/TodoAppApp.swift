//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Sakshi Rathi on 21/09/25.
//

import SwiftUI

@main
struct TodoAppApp: App {
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
