//
//  NavigationUsers.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 20.02.2024.
//

import SwiftUI

struct NavigationUsers: View {
    
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationView {
            List(NavigationUserModel.samples, id: \.id) {data in
                NavigationLink(destination: {
                    UserViewDetail(user: data)
                }, label: {
                    Text(data.name)
                }
                )
            }.sheet(isPresented: $isPresented, onDismiss: {
                print("")
            },
                    content: {
                Button("Close"){
                    isPresented.toggle()
                }
            }
            )
            .listStyle(.grouped).navigationTitle("Welcome")
                .toolbar{
                    ToolbarItem {
                      //  NavigationLink("Test") {
                        //Image(systemName: "tray")
                        //}
                        Button("Open sheet"){
                            isPresented.toggle()
                        }
                    }
                }
        }
    }
}

#Preview {
    NavigationUsers()
}
