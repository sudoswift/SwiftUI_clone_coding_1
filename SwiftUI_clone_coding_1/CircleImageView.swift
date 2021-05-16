//
//  CircleImageView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/17.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        VStack{
//            Image(systemName: "bolt.circle") // use sf symbols
//                .font(.system(size: 200))
//                .foregroundColor(.yellow)
//                .shadow(color: .gray, radius: 2, x: 10, y: 10)
            Image("myImage")
                .resizable() // Image 에서는 resizable modifier이 국룰
                .scaledToFit()
                .frame(width: 400, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                .aspectRatio(contentMode: .fill) // 사진 비율 선택
//                .frame(width:200) // frame 밑에 clipped를 써서 사진을 자를 수 있다.
                .edgesIgnoringSafeArea(.all) // 화면에 꽉차게 채울지 말지 선택
                .clipShape(Circle()) // make image circle
                .overlay(Circle())
                .foregroundColor(.black)
                .opacity(0.48)
                .overlay(
                    Circle().strokeBorder(Color.red, lineWidth: 10)
                        .padding()
                )
                .overlay(
                    Circle().strokeBorder(Color.yellow, lineWidth: 8)
                        .padding(30)
                )
                .overlay(
                    Circle().strokeBorder(Color.blue, lineWidth: 10)
                )
                .overlay(
                    Text("Lee")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 10)
                        
                )
        }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
