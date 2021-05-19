//
//  ContentView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/19.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding()
                Text("SUDO 클론 프로젝트")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView(showsIndicators: false){ //add scrollView & 스크롤 바 없애기
                    VStack{
                        MyProjectCard()
                        MyCard(icon: "tray.fill", title: "책상 정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                        MyCard(icon: "tv.fill", title: "영상 다시보기", start: "8 AM", end: "9 AM", bgColor: Color.red)
                        MyCard(icon: "cart.fill", title: "마트 장보기", start: "11 AM", end: "12 AM", bgColor: Color.orange)
                        MyCard(icon: "gamecontroller.fill", title: "롤 한판하기", start: "2 PM", end: "3 PM", bgColor: Color.black)
                    }
                    .padding()
                }
            }
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 10)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
            }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
