//
//  MessagesCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct MessagesCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 7)
            .frame(width: UIScreen.main.bounds.width - 50, height: 95, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.5), radius: 1, x: 0.5, y: 1)
            .overlay(
                VStack{
                    HStack{
                        VStack{
                            Image("mesageUserImage")
                                .scaledToFit()
                                .clipShape(Circle())
                        }.frame(width: 45, height: 45, alignment: .center)
                        
                        
                        
                        VStack{
                            
                            HStack {
                                Text("Vendor Name")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                .fontWeight(.medium)
                                
                                Spacer()
                            }.padding(.vertical,1)
                            
                            HStack {
                                Text("Business name")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 11))
                                .fontWeight(.medium)
                                
                                Spacer()
                                
                                Text("03:35 PM")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 11))
                                    .fontWeight(.regular)
                                
                                
                            }.padding(.vertical,1)
                            HStack {
                                Text("Lorem ipsum dolor sit amet, consectetur adipi.")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.regular)
                                
                                Spacer()
                            }.padding(.vertical,1)
                        }.padding(.leading)
                        
                        Spacer()
                   
                    }.padding(.horizontal)
                }
            )
    }
}

struct MessagesCard_Previews: PreviewProvider {
    static var previews: some View {
        MessagesCard()
    }
}
