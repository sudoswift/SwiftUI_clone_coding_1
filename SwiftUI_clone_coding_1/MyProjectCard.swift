//
//  MyProjectCard.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/19.
//

import SwiftUI

struct MyProjectCard: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .frame(height: 0)
            Text("sudo 클론 프로젝트")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 5)
                Text("10AM ~ 11AM")
                    .foregroundColor(.secondary)
                    .padding(.bottom, 10)
            HStack{
                Image("1")
                    .resizable()  //image view 바로 밑에 resizable modifier는 국룰
                    .clipShape(Circle())
                    .frame(width:50, height: 50)
                Image("2")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width:50, height: 50)
                Image("3")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width:50, height: 50)
                
                Spacer()
                
                Text("확인")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(20)
                    .frame(width: 80)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
