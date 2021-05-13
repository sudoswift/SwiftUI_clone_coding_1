//
//  ContentView.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/13.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .tracking(1.5)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 3, x: 5, y: 5)
                .truncationMode(.middle)
                .padding(.top)
                .background(Color.yellow)
                .cornerRadius(40)
                .padding()
                .background(Color.black)
                .cornerRadius(40)
                .padding()
                
            Text("안녕하세요")
                .font(.body)
                .fontWeight(.bold)
                .padding()
                .background(Color.green)
                .cornerRadius(40)
                .padding(.bottom)
                .foregroundColor(.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
                .fontWeight(.heavy)
                
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
