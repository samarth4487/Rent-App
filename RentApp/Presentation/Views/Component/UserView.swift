//
//  UserView.swift
//  RentApp
//
//  Created by Samarth Paboowal on 27/02/25.
//

import SwiftUI

struct UserView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: Constants.Padding._8) {
            
            Spacer(minLength: Constants.Padding._20)
            
            user.image
                .resizable()
                .clipShape(Circle())
                .frame(width: Constants.Size._72, height: Constants.Size._72)
            
            
            
            Text(user.name)
                .font(.customFont(Constants.Size._16, style: .medium))
                .padding(.top, Constants.Padding._8)
                .foregroundColor(.pureBlack)
            
            Text(user.balance)
                .font(.customFont(Constants.Size._14, style: .bold))
                .foregroundColor(.pureBlack)
            
            Spacer(minLength: Constants.Padding._12)
            
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color.lightGray.cornerRadius(Constants.Padding._20))
        
    }
}


//MARK: - Preview
#Preview {
    UserView(user: .mock)
}
