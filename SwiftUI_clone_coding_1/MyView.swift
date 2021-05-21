//
//  MyView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/22.
//

import SwiftUI

struct MyView: View {
    
    var bgColor: Color
    var myViewText: String
    
    var body: some View {
        
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.all)
            Text(myViewText)
                .foregroundColor(.white)
                .font(.system(size: 60, weight: .bold))
        } // ZStack !!
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(bgColor: .orange, myViewText: "마이뷰임")
    }
}
