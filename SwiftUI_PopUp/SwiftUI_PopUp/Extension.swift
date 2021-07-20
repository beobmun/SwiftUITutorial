//
//  Extension.swift
//  SwiftUI_PopUp
//
//  Created by 한법문 on 2021/07/20.
//

import Foundation
import SwiftUI


// hex코드로 색 가져오기

extension Color {
    init(hexcode: String) {
        let scanner = Scanner(string: hexcode)
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let red = (rgbValue & 0xff0000) >> 16
        let green = (rgbValue & 0xff00) >> 8
        let blue = (rgbValue & 0xff)
        
        self.init(red: Double(red) / 0xff, green: Double(green) / 0xff, blue: Double(blue) / 0xff)
    }
}
