//
//  DealCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 29/05/2022.
//

import SwiftUI

struct DealCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: UIScreen.main.bounds.width - 50, height: 145, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.6), radius: 0.5, x: 0, y: 0.6)
            .overlay(
            
                VStack{
                    HStack {
                        Image("dealImage")
                            .resizable()
                            .frame(width: 130, height: 130, alignment: .leading)
                            .cornerRadius(5)
                        VStack{
                            HStack {
                                Text("Mega Deal 70 %OFF")
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
                                Text("Get this Amazing Deal")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 9))
                                .fontWeight(.regular)
                                
                                Spacer()
                            }.padding(.bottom,1)
                            
                            
                            HStack{
                                Text("Expiry:")
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
                                RoundedRectangle(cornerRadius: 28)
                                    .frame(width: 70, height: 22, alignment: .center)
                                    .foregroundColor(Color("FEBB12"))
                                    .overlay(
                                      Text("Get Now")
                                        .foregroundColor(Color("000000"))
                                        .font(Font.custom("poppins", size: 9))
                                    .fontWeight(.regular)
                                    )
                            }
                           
                        }
                        Spacer()
                    }.padding(.horizontal,5)
                   
                }
            )
    }
}

struct DealCard_Previews: PreviewProvider {
    static var previews: some View {
        DealCard()
    }
}
