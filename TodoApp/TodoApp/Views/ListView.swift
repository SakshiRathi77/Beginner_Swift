//
//  Listview.swift
//  TodoApp
//
//  Created by Sakshi Rathi on 21/09/25.
//
import SwiftUI

struct ListView: View{
    
    @EnvironmentObject var listviewModel: ListViewModel
    
    var body: some View{
        ZStack {
            if listviewModel.todoList.isEmpty{
                NoItemView()
            }
            else{
                List{
                    ForEach(listviewModel.todoList)
                    {
                        item in
                        ListRowView(item:item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listviewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listviewModel.deleteItem)
                    .onMove(perform: listviewModel.moveItem)
                }
            }}
            .listStyle(.plain)
            .navigationTitle("Todo List 📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: AddView())
            )
        }
        
    }

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}
