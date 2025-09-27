//
//  User.swift
//  Appetizers
//
//  Created by Sakshi Rathi on 06/09/25.
//

import Foundation

final class User: ObservableObject{
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var birthday: Date = Date()
    @Published var extraNapkins: Bool = false
    @Published var frequentRefills: Bool = false
}
