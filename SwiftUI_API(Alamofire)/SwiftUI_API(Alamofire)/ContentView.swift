//
//  ContentView.swift
//  SwiftUI_API(Alamofire)
//
//  Created by 한법문 on 2021/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var randomUserViewModel = RandomUserViewModel()
    
    var body: some View {
        
        
        List(randomUserViewModel.randomUsers) { aRandomUser in
            RandomUserRowView(aRandomUser)
        }

//        List(0...100, id: \.self) { index in
//            RandomUserRowView(randomUserViewModel.randomUsers[index])
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
