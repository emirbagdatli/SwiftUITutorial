//
//  ModelListView.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 18.02.2024.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        Text("Tweet List")
        List(TweetModel.tweets) {
            data in TweetCard(tweet: data)
        }.listStyle(.sidebar)
    }
}

#Preview {
    ModelListView()
}
