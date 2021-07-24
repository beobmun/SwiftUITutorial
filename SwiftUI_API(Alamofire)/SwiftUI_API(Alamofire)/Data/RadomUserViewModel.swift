//
//  RadomUserViewModel.swift
//  SwiftUI_API(Alamofire)
//
//  Created by 한법문 on 2021/07/24.
//

import Foundation
import Combine
import Alamofire


class RandomUserViewModel: ObservableObject {
    
    //MARK: Properties
    var subscription = Set<AnyCancellable>()
    
    @Published var randomUsers = [RandomUser]()
    
    var baseUrl = "https://randomuser.me/api/?results=100"
    
    init() {
        print(#fileID, #function, #line)
        fetchRandomUsers()
    }
    
    
    func fetchRandomUsers() {
        print(#fileID, #function, #line)
        AF.request(baseUrl)
            .publishDecodable(type: RandomUserResponse.self)
            .compactMap({ $0.value })
            .map { $0.results }
            .sink(receiveCompletion: { completion in
                print("데이터 스트림 완료")
            }, receiveValue: { receiveValue in
                print("받은 값: \(receiveValue.count)")
                self.randomUsers = receiveValue
            })
            .store(in: &subscription)

    }
}
