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
            Text("sudo 클론 프로젝트")
                .font(.title)
                .fontWeight(.bold)
                Text("10AM ~ 11AM")
                    .font(.system(size: 20))
            HStack{
                Circle()
                    .frame(width:50, height: 50)
                Circle()
                    .frame(width:50, height: 50)
                Circle()
                    .frame(width:50, height: 50)
                Spacer()
                Text("확인")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(30)
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
