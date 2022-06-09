//
//  serviceBookingDetailCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct serviceBookingDetailCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: UIScreen.main.bounds.width - 50, height: 105, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
            .overlay(
                HStack{
                    VStack{
                        VStack{
                           
                            Image("VendorProfileImage")
                                .resizable()
                                .scaledToFit()
                        
                        }.frame(width: 41, height: 44, alignment: .center)
                        
                       Spacer()
                    }.padding(.top)
                    VStack{
                        Group {
                            HStack {
                                Text("Customer Name")
                                    .foregroundColor(Color("000000"))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("Riyadh, KSA")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("Lorem Ipsum Hotel")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("Nights: 2")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }
                        }
                        .padding(.top,1)
                        
                    }
                    
                    Spacer()
                    Group{
                        VStack{
                            Circle()
                                .frame(width: 34, height: 34, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1.5)
                                .overlay(
                                    VStack{
                                        Image("ContactIcon")
                                            .resizable()
                                    }.frame(width: 18, height: 18, alignment: .center)
                                )
                        }
                       
                        VStack{
                            Circle()
                                .frame(width: 34, height: 34, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1.5)
                                .overlay(
                                    VStack{
                                        Image("infoIcon")
                                            .resizable()
                                    }.frame(width: 14, height: 19, alignment: .center)
                                )
                        }
                    }.padding(.horizontal,5)
                   
                }.padding(.horizontal)
            )
            
    }
}

struct serviceBookingDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        serviceBookingDetailCard()
    }
}
