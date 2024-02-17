//
//  CircleTextImageView.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 17.02.2024.
//

import SwiftUI
import Kingfisher

struct CircleTextImageView: View {
    let title: String
    let imageUrl: String
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)!).fade(duration: 1).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(title).bold().font(.title)
        }
    }
}

#Preview {
    CircleTextImageView(title: "Hello", imageUrl: "https://picsum.photos/400/400").previewLayout(.sizeThatFits)
}
