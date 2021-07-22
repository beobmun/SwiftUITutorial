//
//  MyPickerView.swift
//  SwiftUI_LazyVGrid
//
//  Created by 한법문 on 2021/07/22.
//

import SwiftUI


enum LayoutType: CaseIterable {
    case table
    case grid
    case multiple
}

extension LayoutType {
    // 레이아웃 타입에 대한 컬럼이 자동으로 설정되도록 한다
    var colums: [GridItem] {
        switch self {
        case .table:
            return [GridItem(.flexible())] // felxible 하나로 한줄로 표현
        case .grid:
            return [GridItem(.flexible()), GridItem(.flexible()),] // felxible 두개를 넣어서 두개 아이템 들어가게 함
        case .multiple:
            return [GridItem(.adaptive(minimum: 100))] // adaptive를 통해 크기 닿는데까지 아이템 여러개 넣기
        }
    }
}

struct SegmentLayoutView: View {
    var dummyDatas = MyModel.dummyDataArray
    
    @State var selectedLayoutType: LayoutType = .table
    
    var body: some View {
        VStack {
            Picker(selection: $selectedLayoutType, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
                ForEach(LayoutType.allCases, id: \.self) { layoutType in
                    switch layoutType {
                    case .table:
                        Image(systemName: "list.bullet")
                    case .grid:
                        Image(systemName: "square.grid.2x2.fill")
                    case .multiple:
                        Image(systemName: "circle.grid.3x3.fill")
                    }
                }
                
            }) // Picker
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 250)
            
            
            ScrollView {
                LazyVGrid(columns: selectedLayoutType.colums, content: {
                    ForEach(dummyDatas) { dataItem in
                        switch selectedLayoutType {
                        case .table:
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(height:100)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        case .grid:
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(height:200)
                                .foregroundColor(Color.init(#colorLiteral(red: 1, green: 0.5982608929, blue: 0.5953914865, alpha: 1)))
                                .overlay(
                                    VStack(spacing: 2) {
                                        Circle().frame(height: 100)
                                            .foregroundColor(.yellow)
                                        Spacer().frame(height: 10)
                                        Text("\(dataItem.title)")
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                        Text("\(dataItem.content)")
                                    }
                                )
                        case .multiple:
                            Rectangle()
                                .frame(height:100)
                                .foregroundColor(.green)
                        }
                        
                    }
                    
                    
                }) //LazyVGrid
                .animation(.linear)
                .padding([.leading, .trailing], 10)

            } //ScrollView
        } //VStack
        
    }
}


struct SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentLayoutView()
    }
}
