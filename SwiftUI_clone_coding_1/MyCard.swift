//
//  MyCard.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/19.
//

//변수를 활용해 다양한 view를 만들수있다.

import SwiftUI

struct MyCard: View {
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20.0){
            Image(systemName: icon)
                .font(.system(size: 50))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0){
//                Rectangle()
//                    .frame(height: 0)
                Divider()
                    .opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    
                Spacer()
                    .frame(height:5 )
                Text("\(start)~\(end)")
            }
            .foregroundColor(.white)
        }
        .padding()
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책읽기", start: "1PM", end: "3PM", bgColor: Color.green)
    }
}
