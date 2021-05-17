//
//  MyVstack.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/18.
//

import SwiftUI

struct MyVstack: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10){
            
            Spacer()
            
            Text("some text")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding(.bottom, 100)
            
            Divider()
                .opacity(0)
            
            Rectangle()
                .frame(width: 100, height: 100) //rectangle의 크기를 frame으로 정의
                .foregroundColor(.red) // rectangle의 색 정의
                .edgesIgnoringSafeArea(.all) // safe area의 전체를 채움
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
                .edgesIgnoringSafeArea(.all)
            Spacer()
                .frame(height: 50)  // spacer의 정도를 frame을 통해 제어
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()
            Spacer()
        }
        .frame(width: 300)
        .background(Color.green)
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
