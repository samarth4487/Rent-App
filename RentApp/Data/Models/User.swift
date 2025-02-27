//
//  User.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//
import SwiftUI


struct User {
    let image: Image
    let name: String
    let balance: String
}


// MARK: - Mock Data for User
extension User {
    static let mock = User(
        image: Image(.user),
        name: "Jane Cooper",
        balance: "$ 4,253"
    )
}
