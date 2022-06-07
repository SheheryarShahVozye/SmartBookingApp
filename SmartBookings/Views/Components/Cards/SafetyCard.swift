//
//  SafetyCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 05/06/2022.
//

import SwiftUI

struct SafetyCard: View {
    var title: String = "Carbon Monoxide Alarm"
    var imageName: String = "CO2ALARM"
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 120, height: 120, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
            .overlay(
                VStack{
                    Image(imageName)
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                    
                    Text(title)
                        .foregroundColor(Color("000000").opacity(0.7))
                        .font(Font.custom("poppins", size: 15))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)

                }
            )
    }
}

struct SafetyCard_Previews: PreviewProvider {
    static var previews: some View {
        SafetyCard()
    }
}
