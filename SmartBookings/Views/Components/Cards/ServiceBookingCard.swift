//
//  ServiceBookingCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct ServiceBookingCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: UIScreen.main.bounds.width - 50, height: 150, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
            .overlay(
                HStack{
                    VStack{
                        Image("Group 3587")
                            .resizable()
                            .scaledToFit()
                    }.frame(width: 131, height: 131, alignment: .center)
                    
                    VStack{
                        Group {
                            HStack{
                                Text("Lorem Ipsum Hotel")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 11))
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }
                            
                           
                            
                            HStack{
                                Text("Riyadh, KSA")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                .font(Font.custom("poppins", size: 8))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }
                            
                            HStack{
                                Text("Bookings:")
                                    .foregroundColor(Color("000000"))
                                .font(Font.custom("poppins", size: 12))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                                
                                Text("3")
                                    .foregroundColor(Color("FEBB12").opacity(0.7))
                                .font(Font.custom("poppins", size: 12))
                                .fontWeight(.semibold)
                               
                                Spacer()
                            }
                            
                            
                        }
                        .padding(.bottom,1)
                    }
                    Spacer()
                   
                }.padding(.horizontal)
            )
    }
}

struct ServiceBookingCard_Previews: PreviewProvider {
    static var previews: some View {
        ServiceBookingCard()
    }
}
