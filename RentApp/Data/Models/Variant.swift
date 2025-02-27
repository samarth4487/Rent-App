//
//  Variant.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import Foundation
import SwiftUI

enum Variant {
    case fuel(String)
    case electric(String)
    
    var capacity: String {
        switch self {
        case .fuel(let title), .electric(let title):
            return title
        }
    }
    
    var icon: Image {
        switch self {
        case .fuel:
            Image(.fuel)
        case .electric:
            Image(.battery)
        }
    }
    
    var iconSize: CGSize {
        switch self {
        case .fuel:
                .medium
        case .electric:
                .large
        }
    }
}
