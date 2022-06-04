//
//  ReviewCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 28/05/2022.
//

import SwiftUI

struct ReviewCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color("White"))
            .frame(width: UIScreen.main.bounds.width - 50, height: 110, alignment: .center)
            .shadow(color: Color("000000").opacity(0.6), radius: 0.5, x: 0, y: 0.6)
            .overlay(
                HStack{
                    VStack {
                        Spacer()
                        Circle()
                            .foregroundColor(Color("White"))
                            .frame(width:50, height: 50, alignment: .center)
                            .overlay(
                                Image("UserReview")
                                    .resizable()
                                    .frame(width: 22, height: 33, alignment: .center)
                            
                        ).shadow(radius: 1)
                            .padding(.bottom,10)
                        
                        Spacer()
                    }
                    
                   
                    VStack{
                        Spacer()
                        HStack {
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed magna a magna vestibulum feugiat non pellentesque diam.")
                                .foregroundColor(Color("393F45").opacity(0.8))
                                .font(Font.custom("poppins", size: 8))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                                .lineLimit(3)
                                
                            Spacer()
                        }
                        
                        HStack {
                            StarsView2(rating: 4, maxRating: 5, size: 13)
                            Text("03:44 PM 27/04/2022,")
                                .foregroundColor(Color("393F45").opacity(0.5))
                                .font(Font.custom("poppins", size: 7))
                                .fontWeight(.regular)
                            Spacer()
                        }
                        
                        Spacer()
                        
                    }.padding(.leading)
                        
                    
                }.padding(.horizontal)
            )
    }
}

struct ReviewCard_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCard()
    }
}
