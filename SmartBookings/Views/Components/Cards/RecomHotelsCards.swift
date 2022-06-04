//
//  RecomHotels.swift
//  SmartBookings
//
//  Created by Sheheryar on 23/05/2022.
//

import SwiftUI

struct RecomHotelsCards: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color("White"))
                .frame(width: 130, height: 140, alignment: .center)
                
            

            Image("Group 6782")
                            .resizable()
                            .frame(width: 120, height: 130, alignment: .center)
                            .scaledToFit()
                            .cornerRadius(25)
                            


                
            VStack{
               
               Spacer()
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color("000000").opacity(0.5))
                    .frame(width: 115, height: 50, alignment: .center)
                    .overlay(
                        VStack{
                            HStack{
                                Text("Lorem Hotel")
                                    .font(Font.custom("poppins", size: 7))
                                    .foregroundColor(Color("White"))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                Circle()
                                    .frame(width: 15, height: 15, alignment: .center)
                                    .foregroundColor(Color("C4C4C4"))
                                    .overlay(
                                        Image("Vector")
                                            .resizable()
                                            .frame(width: 9, height: 9, alignment: .center)
                                    )
                                
                            }.padding(.horizontal,5)
                                .offset(y:5)
                               
                            
                            HStack{
                                StarsView2(rating: 3, maxRating: 5)
                                Text("(381)")
                                    .font(.system(size: 4))
                                    .foregroundColor(Color("White"))
                                    .padding(.bottom,4)
                                    .offset(x:-5)
                                Spacer()
                            }.padding(.horizontal,5)
                            
                            HStack{
                                Text("$ 120/night")
                                    .font(.system(size: 8))
                                    .foregroundColor(Color("White"))
                                    .fontWeight(.medium)
                                Spacer()
                            }.padding(.horizontal,5)
                                .padding(.bottom,5)
                            
                           
                        }.frame(width: 110, height: 50, alignment: .center)
                    )
                   
                
                
            }.frame(width: 110, height: 120, alignment: .center)
            
        }
        .frame(width: 130, height: 140, alignment: .center)
    }
}

struct RecomHotelsCards_Previews: PreviewProvider {
    static var previews: some View {
        RecomHotelsCards()
    }
}

struct StarsView: View {
  private static let MAX_RATING: Float = 5 // Defines upper limit of the rating
  private static let COLOR = Color("FDC350") // The color of the stars

  let rating: Float
  private let fullCount: Int
  private let emptyCount: Int
  private let halfFullCount: Int

  init(rating: Float) {
    self.rating = rating
    fullCount = Int(rating)
    emptyCount = Int(StarsView.MAX_RATING - rating)
    halfFullCount = (Float(fullCount + emptyCount) < StarsView.MAX_RATING) ? 1 : 0
  }

  var body: some View {
    HStack {
      ForEach(0..<fullCount) { _ in
         self.fullStar
       }
       ForEach(0..<halfFullCount) { _ in
         self.halfFullStar
       }
       ForEach(0..<emptyCount) { _ in
         self.emptyStar
       }
     }
  }

  private var fullStar: some View {
    Image(systemName: "star.fill").foregroundColor(StarsView.COLOR)
          .font(.system(size: 8))
  }

  private var halfFullStar: some View {
      Image(systemName: "star.lefthalf.fill").foregroundColor(StarsView.COLOR)
          .font(.system(size: 8))
          
  }

  private var emptyStar: some View {
    Image(systemName: "star").foregroundColor(StarsView.COLOR)
          .font(.system(size: 8))
  }
}

struct StarsView2: View {
    var rating: CGFloat
    var maxRating: Int
    var size: CGFloat = 7

    var body: some View {
        let stars = HStack(spacing: 0) {
            ForEach(0..<maxRating) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: size, height: size, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal,1)
            }
        }

        stars.overlay(
            GeometryReader { g in
                let width = rating / CGFloat(maxRating) * g.size.width
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: width)
                        .foregroundColor(.yellow)
                }
            }
            .mask(stars)
        )
        .foregroundColor(.gray)
    }
}
