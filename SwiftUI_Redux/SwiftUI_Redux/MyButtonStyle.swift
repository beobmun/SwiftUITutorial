//
//  MyButtonStyle.swift
//  SwiftUI_Redux
//
//  Created by 한법문 on 2021/07/24.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {

    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(Color.init(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
            .cornerRadius(20)
        

    }
    
}


struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("탭 Clicked")
        }, label: {
            Text("탭")
        }).buttonStyle(MyButtonStyle())
    }
}
