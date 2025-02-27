//
//  RentAppApp.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import SwiftUI

@main
struct RentAppApp: App {
    var body: some Scene {
        WindowGroup {
            RentView(rentData: Rent.mock)
        }
    }
}
