//
//  ContentView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/13.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 100, height: 100) //rectangle의 크기를 frame으로 정의
                .foregroundColor(.red) // rectangle의 색 정의
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // safe area의 전체를 채움
            Rectangle()
                .frame(width: 100, height: 100) //rectangle의 크기를 frame으로 정의
                .foregroundColor(.yellow) // rectangle의 색 정의
                .edgesIgnoringSafeArea(.all) // safe area의 전체를 채움
            Rectangle()
                .frame(width: 100, height: 100) //rectangle의 크기를 frame으로 정의
                .foregroundColor(.blue) // rectangle의 색 정의
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // safe area의 전체를 채움
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
