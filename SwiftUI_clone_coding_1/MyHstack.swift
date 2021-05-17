//
//  MyHstack.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/18.
//

import SwiftUI

struct MyHstack: View {
    var body: some View {
        HStack(alignment: .bottom){
            
            Divider()
                .opacity(0)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.green)
    }
}

struct MyHstack_Previews: PreviewProvider {
    static var previews: some View {
        MyHstack()
    }
}
