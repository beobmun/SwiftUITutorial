//
//  MyProjectCard.swift
//  SwiftUI_stack_practice
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI

struct MyprojectCard: View {
    
    @State
    var shouldShowAlert: Bool = false
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .frame(height: 0)
            
            Text("쫑티 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            
            Text("10AM ~ 11 AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 10)
            
            HStack {
                Image("1")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(.red)
                    )
                
                Image("2")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                
                Image("3")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                
                Spacer()
                
                Button(action: {
                    print("확인 버튼 클릭")
                    self.shouldShowAlert = true
                }) {
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                .alert(isPresented: $shouldShowAlert) {
                    Alert(title: Text("알림창입니다!"))
                }
                
                
                
                    
                    
                
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}


struct MyprojectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyprojectCard()
    }
}
