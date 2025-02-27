//
//  ImageButton.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import SwiftUI

struct ImageButton: View {
    let image: Image
    let title: String
    let action: () -> Void
    
    
    
    var body: some View {
        HStack(spacing: Constants.Padding._12) {
            image
                .resizable()
                .frame(width: Constants.Size._24, height: Constants.Size._24)
                .padding(.top, Constants.Padding._2)
            
            
            Button {
                action()
            } label: {
                Text(title)
                    .font(.customFont(Constants.Size._16, style: .semiBold))
                    .foregroundColor(Color.pureBlack)
            }
            
        }
    }
}


//MARK: - Preview

#Preview {
    ImageButton(image: Image(.distance), title: "Distance", action: {})
}
