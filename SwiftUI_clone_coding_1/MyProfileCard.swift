//
//  MyProfileCard.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/20.
//

import SwiftUI

struct MyProfileCard: View {
    var body: some View {
        NavigationView{
            VStack{
                MyCircleImageView()
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
                        .cornerRadius(20)
                    Text("카카오톡 가기")
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(40)
                }.padding(.top, 20)
            } //VStack
            .navigationBarHidden(true)
        } // NavigationView !!
        .navigationBarTitle("내 프로필")

    }
}

struct MyProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileCard()
    }
}
