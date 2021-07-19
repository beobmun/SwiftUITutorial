//
//  File.swift
//  SwiftUI_TabView
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI



struct MyTabView: View {
    var body: some View {
        TabView {
            //보여질 화면
            
            MyView(text: "1번", bgColor: Color.red)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            
            MyView(text: "2번", bgColor: Color.orange)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
            
            MyView(text: "3번", bgColor: Color.blue)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
        }
        
        
    }
}


struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
