//
//  SwiftUI_DeepLinkApp.swift
//  SwiftUI_DeepLink
//
//  Created by 한법문 on 2021/07/22.
//

import SwiftUI

@main
struct SwiftUI_DeepLinkApp: App {
    @State var selectedTab = TabIdentifier.mytodolist
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab,
                    content:  {
                        MyTodoList()
                            .tabItem {
                                Image(systemName: "list.bullet")
                                Text("할일목록")
                            }.tag(TabIdentifier.mytodolist)
                        ProfileView()
                            .tabItem {
                                Image(systemName: "person.circle.fill")
                                Text("프로필")
                            }.tag(TabIdentifier.profile)
                    })
                .onOpenURL(perform: { url in
                    //열려야하는 url 처리
                    guard let tapId = url.tapidentifier else { return }
                    selectedTab = tapId
                })
        }
    }
}

//어떤 탭이 선택되었는지 여부
enum TabIdentifier: Hashable {
    case mytodolist
    case profile
}


//어떤 페이지를 보여줘야 하는지
enum PageIdentifier: Hashable {
    case todoItem(id: UUID)
}

extension URL {
    
    //info에서 추가한 딥링크가 들어왔는지 여부
    var isDeeplink: Bool {
        return scheme == "deeplink-swiftui"
    }
    
    //url 들어오는 것으로 어떤 타입의 탭을 보여줘야 하는지 가져오기
    var tapidentifier: TabIdentifier? {
        guard isDeeplink else { return nil }
        
        // deelink-swiftui://hohoho
        switch host {
        case "mytodolist":
            return .mytodolist
        case "profile":
            return .profile
        default:
            return nil
        }
    }
    
    var detailPage: PageIdentifier? {
        guard let tapId = tapidentifier,
              pathComponents.count > 1,
              let uuid = UUID(uuidString: pathComponents[1])
        else { return nil }
        
        switch tapId {
        case .mytodolist:
            return .todoItem(id: uuid)
        default:
            return nil
        }
    }
    
}
