//
//  DashboardCards.swift
//  SmartBookings
//
//  Created by Sheheryar on 19/05/2022.
//

import SwiftUI

struct DashboardCards: View {
    var textColor: String = "000000"
    var buttonbg: String = "FEBB12"
    var title: String = "Hotels"
    var imageName: String = "Group 7084"
    var body: some View {
       RoundedRectangle(cornerRadius: 22)
            .foregroundColor(Color("White"))
            .frame(width: 112.7, height: 104.28, alignment: .center)
            .overlay(
                VStack{
                    Text(title)
                        .font(Font.custom("poppins", size: 10))
                        .fontWeight(.regular)
                        .foregroundColor(Color(textColor))
                        .padding(.vertical)
                    Spacer()
                    Image(imageName)
                        .resizable()
                        .frame(width: 51, height: 59, alignment: .center)

                }
            )
    }
}

struct DashboardCards_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCards()
    }
}
