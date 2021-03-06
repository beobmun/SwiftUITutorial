//
//  ContentView.swift
//  SwiftUI_Redux
//
//  Created by 한법문 on 2021/07/23.
//

import SwiftUI

struct ContentView: View {
    
    // 스토어 생성
    let store = AppStore(initState: AppState.init(currentDice: "⚀"), reducer: appReducer(_:_:))
    
    var body: some View {
        // 서브뷰에 옵저버블 오브젝트를 연결한다
        // 바인딩
        DiceView().environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
