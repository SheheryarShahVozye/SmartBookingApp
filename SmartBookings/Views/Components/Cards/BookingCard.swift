//
//  BookingCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 28/05/2022.
//

import SwiftUI

struct BookingCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: UIScreen.main.bounds.width - 50, height: 145, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.6), radius: 0.5, x: 0, y: 0.6)
            .overlay(
            
                VStack{
                    HStack {
                        Image("BookHotel")
                            .resizable()
                            .frame(width: 130, height: 130, alignment: .leading)
                            .cornerRadius(5)
                        VStack{
                            HStack {
                                Text("Lorem Ipsum Hotel")
                                    .foregroundColor(Color("000000"))
                                    .font(Font.custom("poppins", size: 12))
                                .fontWeight(.regular)
                                
                                Spacer()
                            }.padding(.bottom,1)
                            
                            HStack {
                                Text("Riyadh, KSA")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.regular)
                                
                                Spacer()
                            }.padding(.bottom,1)
                            
                            HStack {
                                Text("Booking ID:")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.regular)
                                
                                Text("1234567")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.bold)
                                
                                Spacer()
                            }.padding(.bottom,1)
                            
                            HStack {
                                Text("Nights:")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.regular)
                                
                                Text("1")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.bold)
                                
                                HStack{
                                    Text("Room:")
                                        .foregroundColor(Color("000000").opacity(0.5))
                                        .font(Font.custom("poppins", size: 9))
                                    .fontWeight(.regular)
                                    
                                    Text("1")
                                        .foregroundColor(Color("000000").opacity(0.5))
                                        .font(Font.custom("poppins", size: 9))
                                    .fontWeight(.bold)
                                }.padding(.leading)
                               
                                Spacer()
                            }.padding(.bottom,1)
                            
                            HStack{
                                Text("Check-in:")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.regular)
                                
                                Text("12/05/2022")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.bold)
                                
                                Spacer()
                            }.padding(.bottom,1)
                            
                            HStack{
                                Text("Check-out:")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.regular)
                                
                                Text("22/05/2022")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.bold)
                                
                                Spacer()
                            }.padding(.bottom,1)
                        }
                        Spacer()
                    }.padding(.horizontal,5)
                   
                }
            )
        
    }
}

struct BookingCard_Previews: PreviewProvider {
    static var previews: some View {
        BookingCard()
    }
}
