//
//  CancelationCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct CancelationCard: View {
    var title: String = "Flexible"
    var detailText: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac odio at urna cursus lacinia."
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: UIScreen.main.bounds.width - 50, height: 85, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
            .overlay(
                HStack{
                    VStack{
                        HStack{
                            Text(title)
                            .foregroundColor(Color("000000").opacity(0.7))
                            .font(Font.custom("poppins", size: 15))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            
                            Spacer()
                        }
                        HStack{
                            Text(detailText)
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 9))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                        }
                    }
                    
                    Spacer()
                    Circle()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(Color("White"))
                        .shadow(radius: 1)
                    
                }.padding(.horizontal)
               
            )
    }
}

struct CancelationCard_Previews: PreviewProvider {
    static var previews: some View {
        CancelationCard()
    }
}
