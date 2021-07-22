//
//  MyTodoList.swift
//  SwiftUI_DeepLink
//
//  Created by 한법문 on 2021/07/22.
//

import SwiftUI

struct TodoItem: Identifiable, Hashable {
    var id: UUID
    var title: String
}

func prepareData() -> [TodoItem] {
    print("prepareData() called")
    
    var newList = [TodoItem]()
    
    for i in 0...20 {
        let newTodo = TodoItem(id: UUID(), title: "내 할일 \(i)")
        print("id: \(newTodo.id), title: \(newTodo.title)")
        newList.append(newTodo)
    }
    
    return newList
}

struct MyTodoList: View {
    
    @State var todoItems = [TodoItem]()
    @State var activeUUID: UUID?
    
    //생성자 메서드
    init() {
        _todoItems = State(initialValue: prepareData())
    }
    
    var body: some View{
        
        NavigationView {
            List(todoItems) { todoItem in
                NavigationLink(
                    destination: Text(todoItem.title),
                    tag: todoItem.id,
                    //activeUUID 값이 변경되면  해당하는 링크로 이동
                    selection: $activeUUID,
                    label: {
                        Text(todoItem.title)
                        
                    })
                

                
            }
            
            .navigationBarTitle("할 일 목록")
            .onOpenURL(perform: { url in
                if case .todoItem(let id) = url.detailPage {
                    activeUUID = id
                }
            })
        } //NavigationView
        
        
    }
}


struct MyTodoList_Previews: PreviewProvider {
    static var previews: some View {
        MyTodoList()
    }
}
