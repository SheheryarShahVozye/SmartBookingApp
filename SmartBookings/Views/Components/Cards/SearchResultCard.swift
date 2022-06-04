//
//  SearchResultCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 24/05/2022.
//

import SwiftUI

struct SearchResultCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: UIScreen.main.bounds.width - 50, height: 150, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.5), radius: 1, x: 0, y: 1)
            .overlay(
                VStack{
                    HStack{
                        Image("Group 3587")
                            .resizable()
                            .frame(width: 130, height: 130, alignment: .center)
                            .cornerRadius(10)
                        VStack{
                            Spacer()
                            HStack {
                                Text("Lorem Ipsum Hotel")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.regular)
                                Spacer()
                                
                                Circle()
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 0.1)
                                    .overlay(
                                        Image("hearts-1")
                                            .resizable()
                                            .frame(width: 15, height: 14, alignment: .center)

                                    )
                            }
                            Spacer()
                            HStack {
                                Text("Riyadh, KSA")
                                    .foregroundColor(Color("000000").opacity(0.5))
                                    .font(Font.custom("poppins", size: 11))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }
                            Spacer()
                            HStack {
                                StarsView2(rating: 4, maxRating: 5, size: 13)
                               
                                Text("(381)")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .padding(.bottom,4)
                                    .offset(x:-5)
                               
                                Spacer()
                            }
                            Spacer()
                            HStack{
                                Text("SAR 120")
                                    .foregroundColor(Color("FEBB12"))
                                    .font(Font.custom("poppins", size: 18))
                                    .fontWeight(.semibold)
                                Text("Per Night")
                                    .font(Font.custom("poppins", size: 10))
                                    .foregroundColor(Color("000000").opacity(0.4))
                                    .fontWeight(.regular)
                                
                                Spacer()
                            }
                            Spacer()
                        }
                        .padding(.vertical,20)
                       
                        Spacer()
                    }.padding(.leading,10)
                }
            )
    }
}

struct SearchResultCard_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultCard()
    }
}
