//
//  Rent.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//


struct Rent {
    let unreadNotificationsCount: Int
    let nearbyCar: Car
    let user: User
    let cars: [Car]
}

//MARK: - Computed Properties
extension Rent {
    var hasUnreadMessages: Bool { unreadNotificationsCount > 0 }
}


// MARK: - Mock Data for Rent
extension Rent {
    static let mock = Rent(
        unreadNotificationsCount: 3,
        nearbyCar: .mock,
        user: .mock,
        cars: Car.mockList
    )
}

