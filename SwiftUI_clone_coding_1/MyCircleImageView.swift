//
//  MyCircleImageView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/20.
//

import SwiftUI

struct MyCircleImageView: View {
    var body: some View {
        Image("아이번")
            .resizable()
            .clipShape(Circle())
            .scaledToFit()
            .overlay(
                Circle()
                    .stroke(Color.yellow, lineWidth: 15)
            )
            .frame(width: 350)
            .shadow(color: .black, radius: 10, x: 5, y: 5)
            .padding(.bottom, 40)
    }
}

struct MyCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImageView()
    }
}
