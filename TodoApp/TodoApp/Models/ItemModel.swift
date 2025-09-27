//
//  ItemModel.swift
//  TodoApp
//
//  Created by Sakshi Rathi on 22/09/25.
//

import Foundation
struct ItemModel:Identifiable,Codable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    //basically this gives up write to create item with either three/two parameters if id is passed instead of
    //new item it will update the existing 1.
    
    init(id:String = UUID().uuidString ,title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion()->ItemModel{
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
