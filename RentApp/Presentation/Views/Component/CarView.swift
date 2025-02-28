//
//  CarView.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import SwiftUI

struct CarView: View {
    let car: Car
    let showDivider: Bool
    
    var body: some View {
        VStack(spacing: Constants.Padding._16) {
            HStack {
                VStack(alignment: .leading, spacing: Constants.Padding._8) {
                    Text(car.name)
                        .foregroundColor(.pureWhite)
                        .font(.customFont(Constants.Padding._20, style: .bold))
                    
                    HStack(spacing: Constants.Padding._24) {
                        VariantView(icon: Image(.distance), title: car.distance, tint: .lightGray)
                        
                        VariantView(icon: car.variant.icon, title: car.variant.capacity, tint: .lightGray, size: car.variant.iconSize)
                    }
                    
                }
                
                Spacer()
                
                Image(.arrow)
                    .padding(Constants.Padding._8)
                    .background(Color.white)
                    .clipShape(Circle())
                    .frame(width: Constants.Size._32, height: Constants.Size._32)
                
            }
            
            if showDivider {
                Divider()
                    .frame(height: Constants.Size._1)
                    .background(Color.divider)
                    .padding(.bottom, Constants.Padding._16)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, Constants.Padding._18)
        .padding(.horizontal, Constants.Padding._24)
        .frame(height: showDivider ? Constants.Size._84 : Constants.Size._51)
        .background(Color.lightBlack)
    }
}



//MARK: - Preview
#Preview {
    CarView(car: Rent.mock.cars.first!, showDivider: true)
    
}
