//
//  MyServiceCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct MyServiceCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: UIScreen.main.bounds.width - 50, height: 150, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
            .overlay(
                HStack{
                    VStack{
                        Image("MySerivceHotel")
                            .scaledToFit()
                    }.frame(width: 131, height: 131, alignment: .center)
                    VStack{
                        Group {
                            HStack{
                                Text("Lorem Ipsum Hotel")
                                .foregroundColor(Color("000000"))
                                .font(Font.custom("poppins", size: 11))
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }
                            
                            HStack{
                                Text("The ulitimate 5 star hotel")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                .font(Font.custom("poppins", size: 8))
                                .fontWeight(.regular)
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
                                Text("2 Rooms, 2 Bathrooms")
                                    .foregroundColor(Color("000000").opacity(0.4))
                                .font(Font.custom("poppins", size: 8))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }
                            
                            HStack{
                                Text("SAR 120")
                                .foregroundColor(Color("FEBB12"))
                                .font(Font.custom("poppins", size: 18))
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                
                                Text("Per Night")
                                    .foregroundColor(Color("000000").opacity(0.4))
                                .font(Font.custom("poppins", size: 8))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }
                        }
                        .padding(.bottom,1)
                    }
                    Spacer()
                    Circle()
                        .frame(width: 36, height: 36, alignment: .center)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
                        .overlay(
                            HStack{
                                Image("trashbin")
                                    .scaledToFit()
                            }.frame(width: 17, height: 21, alignment: .center)
                            
                        )
                }.padding(.horizontal)
            )
    }
}

struct MyServiceCard_Previews: PreviewProvider {
    static var previews: some View {
        MyServiceCard()
    }
}
