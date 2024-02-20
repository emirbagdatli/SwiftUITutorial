//
//  NavigationUserModel.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 20.02.2024.
//

import Foundation

struct NavigationUserModel: Identifiable{
    let name: String
    let id: UUID = UUID()
}

extension NavigationUserModel {
    
    ///Sample navigation user model
    static let samples = [
        NavigationUserModel(name: "Emir"),
        NavigationUserModel(name: "Haktan"),
        NavigationUserModel(name: "Arda"),
        NavigationUserModel(name: "Veli")
    ]
}
