//
//  NotificationCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 29/05/2022.
//

import SwiftUI

struct NotificationCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 7)
            .foregroundColor(Color("White"))
            .frame(width: UIScreen.main.bounds.width - 50, height: 96, alignment: .center)
            .shadow(color: Color("000000").opacity(0.6), radius: 0.5, x: 0, y: 0.6)
            .overlay(
                HStack{
                    Circle()
                        .frame(width: 41, height: 41, alignment: .center)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("000000").opacity(0.1), radius: 2, x: 0, y: 0)
                        .overlay(
                            Image("yellowbell")
                                .resizable()
                                .frame(width: 19, height: 21, alignment: .center)
                         )
                    VStack{
                        HStack {
                            Text("Lorem Ipsum Hotel")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 15))
                                .fontWeight(.semibold)
                            
                            
                            Spacer()
                        }.padding(.bottom,1)
                        HStack {
                            Text("Lorem ipsum dolor sit amet, consectetur adipi.")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 10))
                                .fontWeight(.regular)
                                .lineLimit(1)
                            
                            
                            
                            Spacer()
                        }.padding(.bottom,1)
                    }.padding(.leading,10)
                    Spacer()
                }.padding(.horizontal,10)
            )
    }
}

struct NotificationCard_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCard()
    }
}
