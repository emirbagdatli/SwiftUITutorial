//
//  SampleListView.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 18.02.2024.
//

import SwiftUI

struct SampleListView: View {
    
    private let items: Array<String> = [
    "chevron.right",
    "chevron.left"
    ]
    
    var body: some View {
        List{
            Section(header: Text("Profile").font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/), content:{ HStack{
                Image(systemName: "person.fill")
                Text("Person")
                Spacer()
                Image(systemName: "chevron.right")
            }})
            
            Text("Hello")
            HStack(content: {
                ForEach(items, id: \.self) {(item) in
                Image(systemName: item)
                }
            })
            
        }.listStyle(GroupedListStyle.init())
    }
}

#Preview {
    SampleListView()
}
