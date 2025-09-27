//
//  ListViewModel.swift
//  TodoApp
//
//  Created by Sakshi Rathi on 22/09/25.
//

import Foundation
class ListViewModel :ObservableObject{
    
    @Published var todoList: [ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    let itemKey = "todoItems"
    init(){
        getItems()
    }
    
    func getItems(){
       guard
        let data = UserDefaults.standard.data(forKey: itemKey),
        let todoItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else{
           return
       }
        todoList = todoItems
            
    }
    
    func deleteItem(indexSet: IndexSet){
        todoList.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        todoList.move(fromOffsets: from, toOffset: to)
    }
    
    func addNewItem(title: String){
        todoList.append(ItemModel(title: title, isCompleted: false))
    }
    
    func updateItem(item:ItemModel){
        if let index = todoList.firstIndex(where: { $0.id == item.id }){
            todoList[index] = item.updateCompletion()
        }
        
    }
    
    func saveItems(){
        if let encodeData = try? JSONEncoder().encode(todoList){
            UserDefaults.standard.set(encodeData, forKey: itemKey)
        }
    }

}
