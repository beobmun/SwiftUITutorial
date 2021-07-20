//
//  ContentView.swift
//  SwiftUI_Picker,SegmentedStyle
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI



struct ContentView: View {
    
    @State private var selectionValue = 0
//    var selectedColor: [Color] = [Color.red, Color.green, Color.blue]
    let myColorArray = ["레드", "그린", "블루"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return  Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(changeColor(index: selectionValue))
            
            Text("세그먼트 value : \(selectionValue)")
            
            Text("선택된 색깔 : \(myColorArray[selectionValue])")
            
            Picker("피커", selection: $selectionValue) {
                Text(myColorArray[0]).tag(0)
                Text(myColorArray[1]).tag(1)
                Text(myColorArray[2]).tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            
            Picker("피커", selection: $selectionValue) {
                Text(myColorArray[0]).tag(0)
                Text(myColorArray[1]).tag(1)
                Text(myColorArray[2]).tag(2)
            }
            .frame(width: 70, height: 100)
            .padding(5)
            .clipped()
            .border(changeColor(index: selectionValue), width: 10)

            
            
            

        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
