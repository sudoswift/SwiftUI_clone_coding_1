//
//  MyProfileCard.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/20.
//

import SwiftUI

struct MyProfileCard: View {
    var body: some View {
        VStack{
            Image("아이번")
                .resizable()
                .clipShape(Circle())
                .scaledToFit()
                .overlay(
                    Circle()
                        .stroke(Color.yellow, lineWidth: 20)
                )
                .frame(width: 350)
                .shadow(color: .black, radius: 10, x: 5, y: 5)
                .padding(.bottom, 40)
            Text("SUDO SwiftUI")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
            Text("깃허브 Fork 부탁드립니다!!")
                .font(.title)
                .fontWeight(.bold)
            HStack{
                Text("깃허브 가기")
                
            }
        }
    }
}

struct MyProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileCard()
    }
}
