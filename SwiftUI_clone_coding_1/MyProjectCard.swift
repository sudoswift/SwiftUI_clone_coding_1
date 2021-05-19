//
//  MyProjectCard.swift
//  SwiftUI_clone_coding_1
//
//  Created by izvern on 2021/05/19.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State private var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Rectangle()
                .frame(height: 0)
            Text("sudo 클론 프로젝트")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 5)
                Text("10AM ~ 11AM")
                    .foregroundColor(.secondary)
                    .padding(.bottom, 10)
            HStack{
                Image("1")
                    .resizable()  //image view 바로 밑에 resizable modifier는 국룰
                    .clipShape(Circle())
                    .frame(width:50, height: 50)
                    .overlay( // image view에 경계선을 넣으려면 overlay modifier를 활용해 다음과 같이 stroke 수정자를 활용한다. 경계선의 색은 Color로 선의 굵기는 lineWidth로 설정해준다.
                        Circle()
                            .stroke(Color.blue, lineWidth: 3.5)
                    )
                Image("2")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width:50, height: 50)
                    .overlay(
                        Circle()
                            .stroke(Color.green, lineWidth: 3.5)
                    )
                Image("3")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width:50, height: 50)
                    .overlay(
                        Circle()
                            .stroke(Color.red, lineWidth: 3.5)
                    )
                Spacer()
                
                //button view 사용, 삼항연산자 사용 ? : , withAnimation 사용
                // toggle()은 Bool 값을 true 이면 false로 false 이면 true로 바꿔준다.
                //withAnimation 은 Swift가 애니메이션을 직접 자동으로 설정해준다.
                //@State에서 선언한 변수 앞에 self. 를 붙여준다.
                
                Button(action: {
                    withAnimation{
                        self.shouldShowAlert.toggle()
                        print(shouldShowAlert ? "확인 버튼 다시누름" : "확인 버튼 누름!")
                    }

                }){
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                .alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("Alert 를 활용한 알람입니다."), message: Text("어떠신가요?"))
                }
                

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
