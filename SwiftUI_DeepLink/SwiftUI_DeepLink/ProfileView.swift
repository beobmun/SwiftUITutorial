//
//  MyTabView.swift
//  SwiftUI_DeepLink
//
//  Created by 한법문 on 2021/07/22.
//

import SwiftUI



struct ProfileView: View {
    var body: some View {
        
        Text("프로필")
            .font(.system(size: 20))
            .fontWeight(.bold)
            .frame(width:100, height: 100)
            .background(Color.init(#colorLiteral(red: 0.8036451213, green: 0.4068830339, blue: 0.9254902005, alpha: 1)))
            .foregroundColor(.white)
            .cornerRadius(20)
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
