//
//  ContentView.swift
//  SwiftUI_Viewmodifier
//
//  Created by 한법문 on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Hello, world!")
                .modifier(MyRoundedText())
            
            Text("Hello, world!")
                .myRoundedTextStyle()
            
            Image(systemName: "pencil")
                .myRoundedTextStyle()
            
            Rectangle().frame(width: 100, height: 100)
                .myRoundedTextStyle()
            
        }
        

    }
}


// 뷰를 꾸며주는 모디파이어
struct MyRoundedText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.init(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
            .cornerRadius(20)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 10)
                        .foregroundColor(.yellow)
            )
    }
}

extension View {
    func myRoundedTextStyle() -> some View {
        modifier(MyRoundedText())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
