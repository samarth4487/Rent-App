//
//  RentView.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import SwiftUI
import MapKit


struct RentView: View {
    let rentData: Rent
    
    var body: some View {
        ScrollView {
            VStack(spacing: Constants.Padding._20) {
                HStack(spacing: Constants.Padding._0) {
                    ImageButton(image: Image(.info), title: Constants.Text.information) {
                        //Do Nothing
                    }
                    
                    
                    Spacer(minLength: Constants.Padding._8)
                    
                    ImageButton(image: rentData.hasUnreadMessages ? Image(.bellUnread) : Image(.bell) , title: Constants.Text.notifications
                    ) {
                        //Do Nothing
                    }
                    
                }
                .padding(.horizontal, Constants.Padding._22)
                .padding(.top, Constants.Padding._16)
                
                
                NearbyCarView(car: rentData.nearbyCar)
                
                HStack(spacing: Constants.Padding._16) {
                    UserView(user: rentData.user)
                        .aspectRatio(Constants.Size.userProfileAspectRatio, contentMode: .fit)
                    
                    Map(position: .constant(.automatic)) {}
                        .frame(maxWidth: .infinity)
                        .cornerRadius(Constants.Padding._20)
                    
                }
                .padding(.top, Constants.Padding._4)
                
                MoreCarView(cars: rentData.cars)
            }
            .padding(.horizontal, Constants.Padding._28)
            .padding(.bottom, Constants.Padding._16)
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    RentView(rentData: Rent.mock)
}





