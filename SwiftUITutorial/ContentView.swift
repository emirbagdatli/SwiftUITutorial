//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 12.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View  {
        sampleVerticalHorizontal()
    }
    
    fileprivate func sampleVerticalHorizontal() -> some View {
        return VStack(alignment: .center, content: {
            AsyncImage(url: URL(string: "https://picsum.photos/400/300")
            ).frame(width: 256,height: 256).clipShape(Circle())
            Text(verbatim: "Username")
            HStack(content: {
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).textFieldStyle(.roundedBorder.self)
                Text("Data")
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
