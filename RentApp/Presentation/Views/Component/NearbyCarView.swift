//
//  NearbyCarView.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import SwiftUI

struct NearbyCarView: View {
    let car: Car
    
    var body: some View {
        VStack(alignment: .leading, spacing: Constants.Padding._0) {
            Text(Constants.Text.nearestCar)
                .font(.customFont(Constants.Size._12, style: .regular))
                .kerning(Constants.Padding._2)
                .foregroundColor(.mediumGray)
                .padding(.top, Constants.Padding._16)
                .padding(.leading, Constants.Padding._24)
            
            
            Image(car.slug)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(x: Constants.Size.nearbyCarOffset)
                .padding(.top, Constants.Padding._16)
            
            Text(car.name)
                .font(.customFont(Constants.Padding._20, style: .semiBold))
                .foregroundColor(.darkGray)
                .padding(.leading, Constants.Padding._24)
            
            HStack(spacing: Constants.Padding._24) {
                
                VariantView(icon: .init(.distance), title: car.distance, tint: .mediumGray)
                
                VariantView(icon: car.variant.icon, title: car.variant.capacity, tint: .mediumGray, size: car.variant.iconSize)
                
                
                Spacer(minLength: Constants.Padding._0)
                
                Text(car.hourlyRate)
                    .font(.customFont(Constants.Size._14, style: .semiBold))
                    .kerning(Constants.Padding._0_5)
                    .foregroundColor(.pureBlack)
                    
            }
            .foregroundColor(Color.gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, Constants.Padding._24)
            .padding(.trailing, Constants.Padding._24)
        }
        .padding(.bottom, Constants.Padding._16)
        .background(Color.lightGray)
        .clipShape(RoundedRectangle(cornerRadius: Constants.Padding._20, style: .continuous))
    }
}


//MARK: - Preview
#Preview {
    NearbyCarView(car: .mock)
}
