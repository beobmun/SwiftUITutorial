//
//  MyBasicCard.swift
//  SwiftUI_stack_practice
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI


struct MyBasicCard: View {
    var body: some View {
        
        HStack(spacing: 20) {
            
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)

            
            VStack(alignment: .leading, spacing: 0) {
                Divider()
                    .opacity(0)
                
                Text("asdf")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer()
                    .frame(height: 5)
                
                Text("asdf")
                    .foregroundColor(.white)
            }
        }
        .padding(30)
        .background(Color.purple)
        .cornerRadius(20)
    }
}


struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
