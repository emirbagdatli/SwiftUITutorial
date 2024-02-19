//
//  TweetCard.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 18.02.2024.
//

import SwiftUI

struct TweetCard: View {
    let tweet:TweetModel
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(tweet.userName)
            Text("\(tweet.body)")
            //nil == null
            if(tweet.likeCount != nil)
            {
                HStack {
                    Text("\(tweet.likeCount!)")
                    Image(systemName: "heart.fill").foregroundColor(Color(.red))
                    Spacer()
                }
            }
            Spacer()

          

        }.padding(5).frame(height: 100, alignment: .top).overlay(RoundedRectangle(cornerRadius: 10).stroke(.red,lineWidth: 2))
    }
}

#Preview {
    TweetCard(
        tweet: TweetModel.fakeTweet).previewLayout(.sizeThatFits)
}
