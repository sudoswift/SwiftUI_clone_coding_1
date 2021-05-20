//
//  MyNavigationView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/20.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView{
//            Text("MyNavigationView")
                
            MyList()
                // navigationBarTitle 의 displayMode 의 preset 은 large 이당.
                .navigationBarTitle("안녕하세요!", displayMode: .large)
        }
        
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
