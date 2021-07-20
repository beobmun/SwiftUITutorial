//
//  ContentView.swift
//  SwiftUI_PopUp
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    @State var shouldshowBottomSolidMessage = false
    @State var shouldshowBottomToastMessage = false
    @State var shouldshowTopSolidMessage = false
    @State var shouldshowTopToastMessage = false
    @State var shouldshowPopUp = false
    
    func createBottomSolidMessage() -> some View {
        
        HStack(spacing: 10) {
            Image(systemName: "book.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("안내메시지")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                Text("BottomSolidMessage")
                    .lineLimit(2)
                    .foregroundColor(.white)
                
                Divider()
                    .opacity(0)
            }
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
        .background(Color.purple)
        
    }
    
    
    func createBottomToastMessage() -> some View {
        HStack(alignment: .top, spacing: 10) {
            Image("cat")
                .resizable()
                .frame(width: 60, height: 60)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text("내 고양이")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                Text("BottomToastMessage BottomToastMessage BottomToastMessage BottomToastMessage BottomToastMessage")
                    .foregroundColor(.white)
                
                Divider()
                    .opacity(0)
            }
        }
        .padding(15)
        .frame(width: 300)
        .background(Color.green)
        .cornerRadius(20)
    }
    
    func createTopSolidMessage() -> some View {
        
        HStack(spacing: 10) {
            Image(systemName: "flame.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading) {
                Text("안내메시지")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                Text("TopSolidMessage")
                    .lineLimit(2)
                    .foregroundColor(.white)
                
                Divider()
                    .opacity(0)
            }
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 25)
        .background(Color.blue)
        
    }
    
    func createTopToastMessage() -> some View {
        HStack(alignment: .top, spacing: 10) {
            Image("cat")
                .resizable()
                .frame(width: 60, height: 60)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text("메세지가 도착했습니다")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                Text("TopToastMessage TopToastMessage TopToastMessage TopToastMessage TopToastMessage TopToastMessage TopToastMessage")
                    .lineLimit(2)
                    .foregroundColor(.white)
                
                Divider()
                    .opacity(0)
            }
        }
        .padding(15)
        .frame(width: 300)
        .background(Color.orange)
        .cornerRadius(20)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : 25)
        
    }
    
    func createPopUp() -> some View {
        VStack(alignment: .center, spacing: 10) {
            Image("cat")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
            
            Text("메세지가 도착했습니다")
                .foregroundColor(.white)
                .fontWeight(.black)
            Text("TopToastMessage TopToastMessage TopToastMessage TopToastMessage TopToastMessage TopToastMessage TopToastMessage")
                .lineLimit(2)
                .foregroundColor(.white)
            
            Button(action: {
                self.shouldshowPopUp = false
            }, label: {
                Text("닫기")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            })
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(20)
            
            Divider()
                .opacity(0)
        }
        .padding(15)
        .frame(width: 300)
        .background(Color(hexcode: "8227b0"))
        .cornerRadius(10)
        .shadow(radius: 10)
        
    }
    
    
    var body: some View {
        
        ZStack {
            
            VStack {
                Spacer()
                
                Button(action: {
                    self.shouldshowBottomSolidMessage = true
                }, label: {
                    Text("BottomSolidMessage")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldshowBottomToastMessage = true
                }, label: {
                    Text("BottomToastMessage")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldshowTopSolidMessage = true
                }, label: {
                    Text("TopSolidMessage")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldshowTopToastMessage = true
                }, label: {
                    Text("TopToastMessage")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                
                Button(action: {
                    self.shouldshowPopUp = true
                }, label: {
                    Text("PopUp")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color(hexcode: "8227b0"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Spacer()
                

                

                
            }
            .edgesIgnoringSafeArea(.all)
            .popup(isPresented: $shouldshowBottomSolidMessage, type: .toast, autohideIn: 2) {
                createBottomSolidMessage()
            }
            .popup(isPresented: $shouldshowBottomToastMessage, type: .floater(verticalPadding: 20), animation: .spring(), autohideIn: 2) {
                createBottomToastMessage()
            }
            .popup(isPresented: $shouldshowTopSolidMessage, type: .toast, position: .top, autohideIn: 2) {
                createTopSolidMessage()
            }
            .popup(isPresented: $shouldshowTopToastMessage, type: .floater(verticalPadding: 20), position: .top, animation: .spring(), autohideIn: 2) {
                createTopToastMessage()
            }
            .popup(isPresented: $shouldshowPopUp, position: .bottom, dragToDismiss: true, closeOnTap: false, closeOnTapOutside: true) {
                createPopUp()
            }

            
            
            
        } // ZStack
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
