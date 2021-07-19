//
//  MyProfile.swift
//  SwiftUI_stack_practice
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI



struct MyProfile: View {
    
    @Binding
    var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
    
        _isNavigationBarHidden = isNavigationBarHidden
    }

    var body: some View {
        
        
        ScrollView {
            Circle()
                .font(.system(size: 250))
                
                
                .navigationTitle("내 프로필")
                .onAppear{
                    self.isNavigationBarHidden = false
                }
                .navigationBarItems(trailing:
                                        NavigationLink(destination: Text("프로필 설정 화면입니다")) {
                                            Image(systemName: "gear")
                                                .font(.system(.largeTitle))
                                                .foregroundColor(.black)
                                        })
        }
    
        
        
    }
}


struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
