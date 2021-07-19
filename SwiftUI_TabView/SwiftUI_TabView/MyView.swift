//
//  MyView.swift
//  SwiftUI_TabView
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI


struct MyView: View {
    var text: String
    var bgColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            Text(text)
                .font(.largeTitle)
                .fontWeight(.black)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(bgColor)
                .foregroundColor(.white)
                
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(text: "1번", bgColor: Color.red)
    }
}
