//
//  MyGeometryReaderVstack.swift
//  SwiftUI_GeometryReader
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVstack: View {
    
    @State var index: Index = .one
    
    var body: some View {
        GeometryReader { geometryReader in
            VStack {
//                Rectangle()
//                    .frame(height: 0)
                Divider()
                    .opacity(0)
                
                Button(action: {
                    //버튼 클릭되었을때 로직
                    print("1번 클릭")
                    withAnimation {
                        self.index = .one
                    }
                    
                }) {
                    //버튼 생김새
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 25, height: geometryReader.size.height / 3)
                        .padding([.leading, .trailing], self.index == .one ? 50 : 0 )
                        .foregroundColor(.white)
                        .background(Color.red)
                }
                
                Button(action: {
                    //버튼 클릭되었을때 로직
                    print("2번 클릭")
                    withAnimation {
                        self.index = .two
                    }
                }) {
                    //버튼 생김새
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 25, height: geometryReader.size.height / 3)
                        .padding([.leading, .trailing], self.index == .two ? 50 : 0 )
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
                
                Button(action: {
                    //버튼 클릭되었을때 로직
                    print("3번 클릭")
                    withAnimation {
                        self.index = .three
                    }
                }) {
                    //버튼 생김새
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 25, height: geometryReader.size.height / 3)
                        .padding([.leading, .trailing], self.index == .three ? 50 : 0 )
                        .foregroundColor(.white)
                        .background(Color.green)
                }

                
            }
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MyGeometryReaderVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVstack()
    }
}
