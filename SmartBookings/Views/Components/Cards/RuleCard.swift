//
//  RuleCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct RuleCard: View {
    var title: String = "Events & Parties allowed"
    var body: some View {
        RoundedRectangle(cornerRadius: 21)
            .frame(width: UIScreen.main.bounds.width - 50, height: 68, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
            .overlay(
                HStack{
                    Text(title)
                        .foregroundColor(Color("000000").opacity(0.7))
                        .font(Font.custom("poppins", size: 15))
                        
                    Spacer()
                    
                    Circle()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
                }.padding(.horizontal,20)
            )
    }
}

struct RuleCard_Previews: PreviewProvider {
    static var previews: some View {
        RuleCard()
    }
}
