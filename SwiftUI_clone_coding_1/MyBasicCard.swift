//
//  MyBasicCard.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/19.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20.0){
            Image(systemName: "flag.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0){
//                Rectangle()
//                    .frame(height: 0)
                Divider()
                    .opacity(0)
                Text("유튜브 클론 프로젝트")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    
                Spacer()
                    .frame(height:5 )
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
