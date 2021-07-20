//
//  MyView.swift
//  SwiftUI_CustomTabView
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI

struct MyView: View {
    var title: String
    var bgColor: Color
    
    var body: some View {
        
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(.all)
                
            Text(title)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                
        }.animation(.none)
        
        
        
        
        
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "홈", bgColor: Color.green)
    }
}
