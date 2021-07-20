//
//  ContentView.swift
//  SwiftUI_ButtonStyle
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Button(action: {
                print("탭 Clicked")
            }, label: {
                Text("탭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(buttonColor: Color.blue, buttonType: .tab))
            
            Button(action: {
                print("롱클릭 Clicked")
            }, label: {
                Text("롱클릭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(buttonColor: Color.green, buttonType: .long))
            
            Button(action: {
                print("축소 버튼 Clicked")
            }, label: {
                Text("축소버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(buttonColor: Color.yellow, buttonType: .smaller))
            
            Button(action: {
                print("회전 버튼 Clicked")
            }, label: {
                Text("회전버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(buttonColor: Color.pink, buttonType: .rotate))
            
            Button(action: {
                print("블러 버튼 Clicked")
            }, label: {
                Text("블러")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(buttonColor: Color.orange, buttonType: .blur))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
