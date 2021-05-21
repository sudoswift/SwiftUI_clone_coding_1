//
//  MyTabView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/22.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView{
            Text("1번 탭뷰") // 화면에 보여질 View 부분
                .font(.system(size: 60))
                .fontWeight(.bold)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            Text("2번 탭뷰")
                .font(.system(size: 60))
                .fontWeight(.bold)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("1번")
                }
                .tag(1)
            Text("3번 탭뷰")
                .font(.system(size: 60))
                .fontWeight(.bold)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("1번")
                }
                .tag(2)
        }  // TabView !!

    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}