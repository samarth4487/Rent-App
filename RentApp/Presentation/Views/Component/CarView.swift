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
                VStack(alignment: .leading, spacing: 8) {
                    Text(car.name)
                        .foregroundColor(.pureWhite)
                        .font(.customFont(20, style: .bold))
                    
                    HStack(spacing: 24) {
                        VariantView(icon: Image(.distance), title: car.distance, tint: .lightGray)
                        
                        VariantView(icon: car.variant.icon, title: car.variant.capacity, tint: .lightGray, size: car.variant.iconSize)
                    }
                    
                }
                
                Spacer()
                
                Image(.arrow)
                    .padding(8)
                    .background(Color.white)
                    .clipShape(Circle())
                    .frame(width: 32, height: 32)
                
            }
            
            if showDivider {
                Divider()
                    .frame(height: 1)
                    .background(Color.divider)
                    .padding(.bottom, 16)
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
