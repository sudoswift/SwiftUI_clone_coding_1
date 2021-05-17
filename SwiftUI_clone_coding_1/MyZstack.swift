//
//  MyZstack.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/18.
//

import SwiftUI

struct MyZstack: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .offset(x: 20, y: 20)
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
                .offset(x: 40, y: 40)
        }
    }
}

struct MyZstack_Previews: PreviewProvider {
    static var previews: some View {
        MyZstack()
    }
}
