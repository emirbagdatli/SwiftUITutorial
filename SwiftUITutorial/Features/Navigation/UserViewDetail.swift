//
//  UserViewDetail.swift
//  SwiftUITutorial
//
//  Created by Emir Bağdatlı on 20.02.2024.
//

import SwiftUI

struct UserViewDetail: View {
    let user: NavigationUserModel
    var body: some View {
        Text(user.name).font(.largeTitle)
    }
}

#Preview {
    UserViewDetail(user: NavigationUserModel.samples.first!)
}
