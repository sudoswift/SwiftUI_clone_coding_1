//
//  MyProfileCard.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/20.
//

import SwiftUI

struct MyProfileCard: View {
    
    var body: some View {
        
        ScrollView{
            VStack{
                MyCircleImageView(imageString: "아이번")
                Text("SUDO SwiftUI")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom)
                Text("깃허브 Fork 부탁드립니다!!")
                    .font(.title)
                    .fontWeight(.bold)
                HStack{
                    Text("깃허브 가기")
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                    Text("카카오톡 가기")
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(40)
                }.padding(.top, 20)
                Spacer()
            } //VStack
            .navigationBarHidden(false)
        } // ScrollView !!
        .navigationBarTitle("내 프로필")
        .navigationBarItems(trailing:
        NavigationLink(
            destination: Text("설정 화면 입니다").font(.largeTitle).fontWeight(.bold).lineLimit(1),
            label: {
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            })
        )

    }
}

struct MyProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileCard()
    }
}
