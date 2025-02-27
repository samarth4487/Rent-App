//
//  MoreCarView.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import SwiftUI

struct MoreCarView: View {
    let cars: [Car]
    
    var body: some View {
        VStack(spacing: Constants.Padding._20) {
            HStack {
                Text(Constants.Text.moreCars)
                    .foregroundColor(.lightWhite)
                    .font(.customFont(Constants.Size._14, style: .regular))
                
                Spacer()
                Image(.more)
            }
            .padding(.horizontal, Constants.Padding._24)
            
            List {
                ForEach(cars, id: \.slug) { car in
                    CarView(car: car, showDivider: car.slug != cars.last?.slug)
                        .listRowInsets(.init(top: Constants.Padding._0, leading: Constants.Padding._0, bottom: Constants.Padding._0, trailing: Constants.Padding._0))
                        .listRowBackground(Color.lightBlack)
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .frame(height: maxListHeight())
        }
        .padding(.vertical, Constants.Padding._20)
        .background(Color.lightBlack)
        .cornerRadius(Constants.Padding._20)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}


//MARK: - Helper
extension MoreCarView {
    private func maxListHeight() -> CGFloat {
        let carViewHeight: CGFloat = Constants.Size._84
        let dividerHeight: CGFloat = Constants.Size.dividerHeight
        let maxNoOfItem = CGFloat(min(cars.count, Constants.Size.maxCarsWithoutScroll))
        return min(carViewHeight * CGFloat(cars.count), (carViewHeight *  maxNoOfItem) - dividerHeight)
        
    }
}


//MARK: - Preview
#Preview {
    MoreCarView(cars: Car.mockList)
}
