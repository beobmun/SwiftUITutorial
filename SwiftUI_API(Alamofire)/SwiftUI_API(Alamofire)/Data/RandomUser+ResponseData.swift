//
//  RandomUser+ResponseData.swift
//  SwiftUI_API(Alamofire)
//
//  Created by 한법문 on 2021/07/24.
//

import Foundation


struct RandomUserResponse: Codable, CustomStringConvertible {
    var results: [RandomUser]
    var info: Info
    
    var description: String {
        return "results.count: \(results.count) / info: \(info.seed)"
    }
}

struct RandomUser: Codable, Identifiable, CustomStringConvertible {
    var id = UUID()
    var name: Name
    var picture: Picture
    
    static func getDummy() -> Self {
        return RandomUser(name: Name.getDummy(), picture: Picture.getDummy())
    }
    
    var profileImageUrl: URL {
        get {
            URL(string: picture.medium)!
        }
    }
    
    var description: String {
        return "[\(name.title)], \(name.last), \(name.first)"
    }
}


struct Name: Codable {
    var title: String
    var first: String
    var last: String
    

    
    static func getDummy() -> Self {
        return Name(title: "title", first: "first", last: "last")
    }
}

struct Picture: Codable {
    var large: String
    var medium: String
    var thumbnail: String
    
    static func getDummy() -> Self {
        return Picture(large: "https://randomuser.me/api/portraits/women/16.jpg",
                       medium: "https://randomuser.me/api/portraits/women/16.jpg",
                       thumbnail: "https://randomuser.me/api/portraits/women/16.jpg")
    }
}

struct Info: Codable {
    var seed: String
    var resultsCount: Int
    var page: Int
    var version: String
    
    private enum CodingKeys: String, CodingKey {
        case seed = "seed"
        case resultsCount = "results"
        case page = "page"
        case version = "version"
    }
}
