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
            Section(
                header: Text("오늘 할 일")
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                ,footer: Text("footer"))
            {
                ForEach(1...3, id: \.self) { itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1PM", end: "3PM", bgColor: Color.green)
            }
        }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header: Text("내일 할 일")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black))
            {
                ForEach(1...20, id: \.self) { itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1PM", end: "3PM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            .listRowBackground(Color.yellow) // list의 section 속 backgroundColor 지정
        }
        //list style change!!
//        .listStyle(PlainListStyle()) // preset
        .listStyle(GroupedListStyle())
        .navigationBarTitle("내 목록")
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
