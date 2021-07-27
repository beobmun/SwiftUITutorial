//
//  ContentView.swift
//  SwiftUI_Darkmode
//
//  Created by 한법문 on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    
    @State fileprivate var shouldShowAlert = false
    
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        ZStack {
//            Color.yellow
            
            Theme.myBackgroundColor(forScheme: scheme)
            
            VStack {
                Spacer()
                
                
                Button(action: {
                    print("버튼이 클릭되었다.")
                    shouldShowAlert.toggle()
                }, label: {
                    Text("로그인하러 가기")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Theme.myBtnBackgroundColor(forScheme: scheme))
                        .cornerRadius(13)
                        .overlay(RoundedRectangle(cornerRadius: 13).stroke(Color.white, lineWidth: 3))
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("안녕학세요"), message: Text("오늘도 빡코딩"), dismissButton: .default(Text("닫기")))
                })
                
                Spacer()
                    .frame(height: 100)
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct Theme {
    static func myBackgroundColor(forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color.white
        let darkColor = Color.init(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1))
        
        switch scheme {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        @unknown default:
            return lightColor
        }
    }
    
    static func myBtnBackgroundColor(forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color.init(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        let darkColor = Color.init(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        
        switch scheme {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        @unknown default:
            return lightColor
        }
    }
}
