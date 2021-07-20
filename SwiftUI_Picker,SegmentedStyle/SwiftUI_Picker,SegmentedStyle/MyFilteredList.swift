//
//  MyPickerTableView.swift
//  SwiftUI_Picker,SegmentedStyle
//
//  Created by 한법문 on 2021/07/21.
//

import SwiftUI

enum School: String,CaseIterable {
    case elementary = "초등학교"
    case middle = "증학교"
    case high = "고등학교"
}

struct MyFriend: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var school: School
}

func prepareData() -> [MyFriend] {
    
    var newList = [MyFriend]()
    
    
    for i in 0...20 {
        let newFriend = MyFriend(name: "내 친구 \(i)", school: School.allCases.randomElement()!)
        newList.append(newFriend)
    }
    
    return newList
    
}

struct MyFilteredList: View {
    
    @State private var fileredValue = School.elementary
    @State private var myFriedsList = [MyFriend]()
    
    //생성자 메소드
    init() {
        _myFriedsList = State(initialValue: prepareData())
    }
    
    var body: some View {
        VStack {
            
            Text("fileredValue: \(fileredValue.rawValue)")
            

            List {
                
                Section(header: Text("언제 동창?")) {
                    Picker("동창", selection: $fileredValue) {
                        Text("초등학교").tag(School.elementary)
                        Text("중학교").tag(School.middle)
                        Text("고등학교").tag(School.high)
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("")) {
                    ForEach(myFriedsList.filter({
                        $0.school == fileredValue
                    }), id: \.self) { friendItem in
                        
                        GeometryReader() { geometry in
                            HStack {
                                Text("name: \(friendItem.name)")
                                    .frame(width: geometry.size.width / 2)
                                
                                Divider()
                                
                                Text("school: \(friendItem.school.rawValue)")
                                    .frame(width: geometry.size.width / 2)
                            }
                        }
                        
                        
                        
                    }
                }
                
            }
        }
        
    }
}


struct MyFilteredList_Previews: PreviewProvider {
    static var previews: some View {
        MyFilteredList()
    }
}
