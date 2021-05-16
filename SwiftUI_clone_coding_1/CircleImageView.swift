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
                .frame(width: 200, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                .aspectRatio(contentMode: .fill) // 사진 비율 선택
//                .frame(width:200) // frame 밑에 clipped를 써서 사진을 자를 수 있다.
                .clipped()
                .edgesIgnoringSafeArea(.all) // 화면에 꽉차게 채울지 말지 선택
                .clipShape(Circle()) // make image circle
                
        }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
