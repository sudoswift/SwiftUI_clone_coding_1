//
//  MyList.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/20.
//

import SwiftUI

struct MyList: View {
    
    var body: some View {
        
        // List view 속 section view!!
        List{
            Section(header: Text("오늘 할 일")){
                ForEach(1...3, id: \.self) { itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1PM", end: "3PM", bgColor: Color.green)
            }
        }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            Section(header: Text("내일 할 일")){
                ForEach(1...3, id: \.self) { itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1PM", end: "3PM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 30, bottom: 10, trailing: 10))
        }
//        .listStyle(PlainListStyle()) // preset
        .listStyle(GroupedListStyle())
        

        
        
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
