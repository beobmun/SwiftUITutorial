//
//  ContentView.swift
//  SwiftUI_TextInput
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            
            HStack {
                TextField("사용자 이름", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)

                
                
                Button(action: {
                    self.userName.removeAll()
                }, label: {
                    if self.userName.count > 0 {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                    
                })
                
                
            }
            
                
            HStack {
                SecureField("비밀번호", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    self.password.removeAll()
                }, label: {
                    if self.password.count > 0 {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                    
                })
            }
            
            
            Text("비밀번호 : \(password)")
            
        }.padding([.leading, .trailing], 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
