//
//  MyTabView.swift
//  SwiftUI_CustomTabView
//
//  Created by 한법문 on 2021/07/20.
//

import SwiftUI


enum TabIndex {
    case home
    case cart
    case profile
}

struct MyCustomTabView: View {
    
    @State var tabIndex: TabIndex
    
    @State var lagerScale: CGFloat = 1.4
    
    func changeMyView(tabIndex: TabIndex) -> MyView {
        switch tabIndex {
        case .home:
            return MyView(title: "홈", bgColor: Color.green)
        case .cart:
            return MyView(title: "장바구니", bgColor: Color.purple)
        case .profile:
            return MyView(title: "프로필", bgColor: Color.blue)
        default:
            return MyView(title: "홈", bgColor: Color.green)
        }
    }
    
    func changeIconColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return Color.green
        case .cart:
            return Color.purple
        case .profile:
            return Color.blue
        default:
            return Color.green
        }
    }
    
    func calcCircleBgPosition(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return (geometry.size.width / 3)
        default:
            return -(geometry.size.width / 3)
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                self.changeMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: self.calcCircleBgPosition(tabIndex: tabIndex, geometry: geometry), y: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : 0)
                    .foregroundColor(.white)
                
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Button(action: {
                            print("홈 클릭")
                            
                            withAnimation {
                                tabIndex = .home
                            }
                            
                        }) {
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .home ? self.lagerScale : 1.0)
                                .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width/3, height: 50)
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                        }.background(Color.white)
                        
                        Button(action: {
                            print("카트 클릭")
                            
                            withAnimation {
                                tabIndex = .cart
                            }
                            
                        }) {
                            Image(systemName: "cart.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .cart ? self.lagerScale : 1.0)
                                .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width/3, height: 50)
                                .offset(y: self.tabIndex == .cart ? -10 : 0)
                        }.background(Color.white)
                        
                        Button(action: {
                            print("프로필 클릭")
                            
                            withAnimation {
                                tabIndex = .profile
                            }
                            
                        }) {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .profile ? self.lagerScale : 1.0)
                                .foregroundColor(self.tabIndex == .profile ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width/3, height: 50)
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                        }.background(Color.white)
                    }
                    
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 20) // 아이폰 se나 구형 아이폰은 0 아니면 20
                }
                
            }

        }.edgesIgnoringSafeArea(.all)
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
