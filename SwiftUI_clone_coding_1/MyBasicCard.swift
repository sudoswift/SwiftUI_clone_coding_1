//
//  MyBasicCard.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/19.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack{
            Image(systemName: "flame.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
            VStack(alignment: .leading){
                Text("유튜브 클론 프로젝트")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 3)
                Text("8PM ~ 10PM")
            }
            .foregroundColor(.white)
        }
        .padding()
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
