//
//  ContentView.swift
//  SwiftUI_CustomTabView
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MyCustomTabView(tabIndex: .home)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
