//
//  AppStore.swift
//  SwiftUI_Redux
//
//  Created by 한법문 on 2021/07/24.
//

import Foundation


// 앱스토어는 앱상태와 앱 액션을 가지고 있다
// 앱의 상태를 가지고 있기 위해 얍스토어를 만들어 준다.
// 그리고 읽기 전용이다.
typealias AppStore = Store<AppState, AppAction>


// ObservableObject 앱 상태를 가지고 있는 옵저버블 오브젝트 스토어
final class Store<State, Action>: ObservableObject {
    
    // 외부에서 읽을수만 있도록 private(set) 설정하였음
    @Published private(set) var  state: State
    
    private let reducer: Reducer<State, Action>
    
    
    // 제네릭 형태의 State
    // 즉 Store가 가지고 있는 제네릭 State
    //생성자 메소드
    // escaping으로 빠져나가기 위해 @escaping 넣어주기
    init(initState: State, reducer: @escaping Reducer<State, Action>) {
        self.state = initState
        self.reducer = reducer
    }
    
    // 디스패치를 통해 액션을 행한다.
    func dispatch(action: Action) {
        // inout 매개변수를 넣을때는 & 요 표시를 해줘야 함.
        // 리듀서 클로저를 실행해서 액션을 필터링 한다.
        reducer(&self.state, action)
    }
}
