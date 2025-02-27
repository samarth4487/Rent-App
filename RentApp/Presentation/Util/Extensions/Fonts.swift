//
//  Fonts.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import Foundation
import SwiftUI

extension Font {
    static func customFont(_ size: CGFloat, style: CustomFontStyle) -> Font {
        return Font.custom("Barlow-\(style.rawValue)", size: size)
    }
}


//MARK: - CustomFontStyle
enum CustomFontStyle: String {
    case bold = "Bold"
    case italic = "Italic"
    case regular = "Regular"
    case medium = "Medium"
    case light = "Light"
    case semiBold = "SemiBold"
}
