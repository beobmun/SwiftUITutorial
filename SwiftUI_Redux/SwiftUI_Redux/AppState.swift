//
//  AppState.swift
//  SwiftUI_Redux
//
//  Created by 한법문 on 2021/07/24.
//

import Foundation


//앱의 상태 즉 데이터

struct AppState {
    var currentDice: String = "" {
        didSet{
            print("currentDice: \(currentDice)", #fileID, #function)
        }
    }
}
