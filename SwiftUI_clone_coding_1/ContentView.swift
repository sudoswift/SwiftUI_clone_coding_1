//
//  ContentView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/13.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            LazyVStack{
                MyProjectCard()
                MyBasicCard()
                MyBasicCard()
                MyBasicCard()
                MyBasicCard()
                MyBasicCard()
                MyBasicCard()
            }
            .padding(8)
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 80, height: 80)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: 2, y: 3)
                .overlay(
                    Image(systemName: "plus")
                        .font(.title)
                        .foregroundColor(.white)
                )
                .padding(.trailing, 10)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
