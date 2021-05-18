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
            Text("sudoswift clone project")
                .font(.title)
                .fontWeight(.bold)
                Text("10AM ~ 11AM")
                    .font(.system(size: 15))
            HStack{
                Circle()
                    .strokeBorder(Color.blue, lineWidth:4)
                    .background(Circle().foregroundColor(.red))
                    .frame(width:50, height: 50)
                Circle()
                    .strokeBorder(Color.blue, lineWidth:4)
                    .background(Circle().foregroundColor(.green))
                    .frame(width:50, height: 50)
                Circle()
                    .strokeBorder(Color.blue, lineWidth:4)
                    .background(Circle().foregroundColor(.black))
                    .frame(width:50, height: 50)
                Spacer()
                Text("확인")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(30)
            }
        }
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
