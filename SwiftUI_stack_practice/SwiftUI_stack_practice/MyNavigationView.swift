//
//  MyNavigationView.swift
//  SwiftUI_stack_practice
//
//  Created by 한법문 on 2021/07/19.
//

import SwiftUI


struct MyNavigationView: View {
    
    
    var body: some View {
        
        NavigationView {
//            Text("MyNavigationView")
                
            MyList()
                
                .navigationTitle("안녕하세요!")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarItems(leading:
                                        Button(action: {
                                            print("하하")
                                        }) {
                                            Text("하하")
                                        },
                                    trailing:
                                        NavigationLink(destination:
                                                        Text("넘어온 화면입니다")) {
                                            Image(systemName: "bookmark.fill")
                                                .font(.largeTitle)
                                                .foregroundColor(.black)
                                        })
            
            
        }
        
        
        
        
    }
}


struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
