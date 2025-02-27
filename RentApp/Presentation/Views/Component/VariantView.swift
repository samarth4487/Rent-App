//
//  VariantView.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import SwiftUI

struct VariantView: View {
    let icon: Image
    let title: String
    let tint: Color
    let size: CGSize
    
    init(icon: Image, title: String, tint: Color, size: CGSize = .default) {
        self.icon = icon
        self.title = title
        self.tint = tint
        self.size = size
    }
    
    var body: some View {
        HStack(spacing: Constants.Padding._8) {
            icon
                .renderingMode(.template)
                .resizable()
                .foregroundColor(tint)
                .frame(width: size.width, height: size.height)
            
            Text(title)
                .foregroundColor(tint)
                .font(.customFont(Constants.Size._14, style: .regular))
        }
        
    }
}


//MARK: - Preview
#Preview {
    VariantView(icon: Image(.distance), title: "Distance", tint: .darkGray)
}
