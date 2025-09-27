//
//  ListRowView.swift
//  TodoApp
//
//  Created by Sakshi Rathi on 21/09/25.
//
import SwiftUI
struct ListRowView: View {
    
    let item : ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title)
        .padding()
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1: ItemModel {
        ItemModel(title: "tis a test", isCompleted: false)
    }
    static var item2: ItemModel {
        ItemModel(title: "tis a test2", isCompleted: true)
    }
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }.previewLayout(.sizeThatFits)
        }
}
