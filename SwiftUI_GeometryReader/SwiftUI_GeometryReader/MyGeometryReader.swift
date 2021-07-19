//
//  MyGeometryReader.swift
//  SwiftUI_GeometryReader
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI


struct MyGeometryReader: View {
    
    @State private var isClicked1: Bool = false
    @State private var isClicked2: Bool = false
    @State private var isClicked3: Bool = false
    
    
    var body: some View {
        
        GeometryReader { geometryReader in
            
            
            VStack(spacing: 0) {
                Rectangle()
                    .frame(height: 0)
                
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(height: geometryReader.size.height / 3)
                    .frame(width: self.isClicked1 ? geometryReader.size.width / 3 : 25)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .onTapGesture {
                        withAnimation {
                            self.isClicked1.toggle()
                            if self.isClicked2 == true {
                                self.isClicked2.toggle()
                            }
                            if self.isClicked3 == true {
                                self.isClicked3.toggle()
                            }
                        }
                    }
                    
                
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(height: geometryReader.size.height / 3)
                    .frame(width: self.isClicked2 ? geometryReader.size.width / 3 : 25)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .onTapGesture {
                        withAnimation {
                            self.isClicked2.toggle()
                            if self.isClicked1 == true {
                                self.isClicked1.toggle()
                            }
                            if self.isClicked3 == true {
                                self.isClicked3.toggle()
                            }
                        }
                    }
                
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(height: geometryReader.size.height / 3)
                    .frame(width: self.isClicked3 ? geometryReader.size.width / 3 : 25)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .onTapGesture {
                        withAnimation {
                            self.isClicked3.toggle()
                            if self.isClicked2 == true {
                                self.isClicked2.toggle()
                            }
                            if self.isClicked1 == true {
                                self.isClicked1.toggle()
                            }
                        }
                    }

//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 50)
//                    .background(Color.purple)
//                    .foregroundColor(.white)

            }.background(Color.yellow)

            
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black)
        
        
        
    }
}


struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
