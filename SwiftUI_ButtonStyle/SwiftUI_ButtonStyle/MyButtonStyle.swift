//
//  MyButtonStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
    case smaller
    case rotate
    case blur
}


struct MyButtonStyle: ButtonStyle {

    
    var buttonColor: Color
    var buttonType: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(buttonColor)
            .cornerRadius(20)
            .scaleEffect((self.buttonType == .tab || self.buttonType == .long) && configuration.isPressed ? 1.3 : 1.0)  // buttonType이 tab, long일때 확대
            .scaleEffect(self.buttonType == .smaller && configuration.isPressed ? 0.7 : 1.0)  // buttonType이 small일때 축소
            .opacity(self.buttonType == .smaller && configuration.isPressed ? 0.5 : 1.0) // buttonType이 small일때 희미해지기
            .blur(radius: self.buttonType == .blur && configuration.isPressed ? 10 : 0)  // buttonType이 blur 일때 블러처리
            .rotationEffect(self.buttonType == .rotate && configuration.isPressed ? .degrees(360) : .degrees(0), anchor: .center)
            .onTapGesture {
                if (self.buttonType == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .light) // 진동
                    haptic.impactOccurred()
                }
                
            }
            .onLongPressGesture {
                if self.buttonType == .long {
                    let haptic = UIImpactFeedbackGenerator(style: .light) // 진동
                    haptic.impactOccurred()
                }
            }
        

    }
    
}


struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("탭 Clicked")
        }, label: {
            Text("탭")
        }).buttonStyle(MyButtonStyle(buttonColor: Color.blue, buttonType: .tab))
    }
}
