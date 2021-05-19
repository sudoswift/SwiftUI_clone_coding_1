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
            
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding()
                Text("SUDO 클론 프로젝트")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView{ //add scrollView
                    VStack{
                        MyProjectCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                    }
                }
            }
            .padding(.top, 10)
            .padding(.horizontal, 20)
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 10)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
            }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
