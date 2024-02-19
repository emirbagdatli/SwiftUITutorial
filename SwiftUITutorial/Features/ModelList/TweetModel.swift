//
//  TweetModel.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 18.02.2024.
//

import Foundation


///struct = value type (bellek avantajı)
///class = reference type
                        
struct TweetModel: Identifiable {
    let id: UUID = UUID()
    let userName: String
    var body: String
    var likeCount: Int?
}

extension TweetModel {
    
  static let tweets = [
    TweetModel(userName: "emir", body: "hello world", likeCount: 7),
    TweetModel(userName: "testUser", body: "hello world!!", likeCount: 3),
    TweetModel(userName: "test", body: "lorem ipsum"),
    ]
    
    static let fakeTweet = TweetModel(userName: "test", body: "lorem ipsum")
}
