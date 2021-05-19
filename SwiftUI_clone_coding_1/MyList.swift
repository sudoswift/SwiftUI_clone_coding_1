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
            Section(header: Text("헤더임니당")){
                ForEach(1...3, id: \.self) { itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1PM", end: "3PM", bgColor: Color.green)
            }
        }
            Section(header: Text("헤더임니당")){
                ForEach(1...3, id: \.self) { itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1PM", end: "3PM", bgColor: Color.blue)
                }
            }
    }
        

        
        
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
