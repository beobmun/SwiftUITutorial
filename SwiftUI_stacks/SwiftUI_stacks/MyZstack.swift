//
//  MyZstack.swift
//  SwiftUI_stacks
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI


struct MyZstack: View {
    var body: some View {
        
        
        ZStack {
            
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.yellow)
                .zIndex(3)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .zIndex(2)
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .zIndex(1)
        }
    }
}


struct MyZstack_Previews: PreviewProvider {
    static var previews: some View {
        MyZstack()
    }
}
