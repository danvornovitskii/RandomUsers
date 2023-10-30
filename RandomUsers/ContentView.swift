//
//  ContentView.swift
//  RandomUsers
//
//  Created by Danila Vornovitskii on 30.10.2023.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List(userData.users) { user in
                Text(user.fullName)
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
