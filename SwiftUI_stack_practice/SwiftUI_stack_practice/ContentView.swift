//
//  ContentView.swift
//  SwiftUI_stack_practice
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    
    @State
    var isNavigationBarHidden: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment:.bottomTrailing) {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack {
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        
                        
                        Spacer()
                        NavigationLink(destination: MyProfile(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                    }
                    .padding([.top, .bottom], 10)
                    .padding([.leading, .trailing], 20)
                    
                    Text("쫑티의 하루 일과")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding([.leading, .trailing], 20)
                    
                    ScrollView {
                        VStack {
                            MyprojectCard()
                            
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "정리", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            MyCard(icon: "tray.fill", title: "정리", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            MyCard(icon: "tray.fill", title: "정리", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                        }
                        .padding()
                    }
                }

                
                
                
                
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
                    .shadow(radius: 20)
            } //Zstack
            .navigationBarTitle("뒤로 가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = true
            }
            
        } // NavigationView
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
