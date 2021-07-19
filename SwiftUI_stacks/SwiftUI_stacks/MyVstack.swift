//
//  MyVstack.swift
//  SwiftUI_stacks
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI

struct MyVstack: View {
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            Divider()
                .opacity(0)
            
//            Rectangle()
//                .frame(height: 0)
            
//            Spacer()
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding(.bottom, 50)
            
           
            
            Rectangle()
                .foregroundColor(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .foregroundColor(Color.yellow)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 50)
            
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: 100, height: 100)
            
            
//            Spacer()
//            Spacer()
//            Spacer()
        }
        .frame(width: 300)
        .background(Color.green)
//        .edgesIgnoringSafeArea(.all)
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
