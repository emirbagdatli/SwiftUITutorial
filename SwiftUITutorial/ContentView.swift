//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 12.02.2024.
//

import SwiftUI
import Kingfisher

struct IconViewField: View {
    var iconName: String = "Hello"
    @State var textFieldValue = "keyboard"

    var body: some View {
        VStack {
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $textFieldValue)
            Text(textFieldValue).bold().font(.largeTitle)
            Image(systemName: textFieldValue.lowercased()).frame(width: 100, height: 100, alignment: Alignment.center)
        }
    }
}

struct ContentView: View {
    
    private let imageUrl: String = "https://picsum.photos/400/400"
    
    var body: some View  {
   CircleTextImageView(title: "test image", imageUrl: imageUrl)
    }
    
    
    //MARK: Test
    //TODO: Fix here
    fileprivate func sampleVerticalHorizontal() -> some View {
        return VStack(alignment: .center, content: {
            AsyncImage(url: URL(string: "https://picsum.photos/400/300")
            ).frame(width: 256,height: 256).clipShape(Circle())
            Text(verbatim: "Username")
            HStack(content: {
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).textFieldStyle(.roundedBorder.self)
                Image(systemName: "magnifyingglass").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) // Sf symbols üzerinden icon ismine bakılıp systemName parametresine ekleniyor
                Text("Search").background(Color("random_color"))

            }
            ).padding()
        })
    }
    fileprivate func sampleZStack() -> some View {
        return ZStack(
            content: {
                AsyncImage(url: URL(string: "https://picsum.photos/400/300"))
                Text("Test")
                
        })
    }
}

struct ContentView_Preview : PreviewProvider {
    static var  previews: some View {
        ContentView()
    }
}
