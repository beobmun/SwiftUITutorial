//
//  ContentView.swift
//  SwiftUI_Menu_Tutorial
//
//  Created by 한법문 on 2021/07/22.
//

import SwiftUI

let myPets = ["멍멍이 🐶", "야옹이 🐯", "찍찍이 🐭"]

struct ContentView: View {
    
    @State private var shouldShowAlert: Bool = false
    @State private var myText: String = ""
    @State private var selected: Int = 0
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 20) {
                Spacer()
                
                Text("\(myPets[selected])")
                    .font(.system(size: 60))
                    .bold()
                
                Text("우측 상단에 떙떙떙을 눌러주세요!")
                    .font(.title2)
                    .fontWeight(.black)
                
                Spacer()
                Spacer()
            }
            
                
                .padding()
                .navigationTitle("하이요")
                .toolbar(content: {
                    ToolbarItem(placement: .primaryAction) {
                        
                        Menu {
                            Button(action: {
                                print("오늘도 빡코딩 클릭")
                                shouldShowAlert = true
                                myText = "오늘도 빡코딩"
                            }, label: {
                                Label("오늘도 빡코딩", systemImage: "flame.fill")
                            })
                            
                            Button(action: {
                                print("오늘은 쉬는 날 클릭")
                                shouldShowAlert = true
                                myText = "오늘은 쉬는 날"
                            }, label: {
                                Label("오늘은 쉬는날", systemImage: "flame.fill")
                            })
                            
                            Section {
                                Button(action: {}, label: {
                                    Label("새 파일 만들기", systemImage: "doc")
                                })
                                Button(action: {}, label: {
                                    Label("새 폴더 만들기", systemImage: "folder")
                                })
                            }
                            
                            Section {
                                Button(action: {}, label: {
                                    Label("파일 모두 삭제", systemImage: "trash")
                                })

                            }
                            
                            Picker(selection: $selected, label: Text("애완 동물 선택")) {
                                ForEach(myPets.indices, id: \.self) { index in
                                    Text("\(myPets[index])").tag(index)
                                    
                                }
                            }
                            
                        } label: {
                            Circle()
                                .foregroundColor(Color.init(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
                                .frame(width: 50, height: 50)
                                .overlay(Label("더보기", systemImage: "ellipsis")
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                        )
                            
                            
                        }// 메뉴

                    }
                }) // toolbar
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림"), message: Text("\(myText)"), dismissButton: .default(Text("확인")))
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
