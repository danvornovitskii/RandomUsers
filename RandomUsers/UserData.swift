//
//  UserData.swift
//  RandomUsers
//
//  Created by Danila Vornovitskii on 30.10.2023.
//

import Foundation

@MainActor
class UserData: ObservableObject {
    @Published var users: [User] = []   
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
            do {
                let users = try await UserFetchingClient.getUsers()
                self.users = users
            }
            catch {
                print(error)
            }
        }
}
