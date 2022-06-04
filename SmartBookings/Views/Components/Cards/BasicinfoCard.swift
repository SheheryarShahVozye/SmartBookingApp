//
//  BasicinfoCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct BasicinfoCard: View {
    var text:String = "Chalets"
    var callback: () -> Void = {}
    var body: some View {
       RoundedRectangle(cornerRadius: 7)
            .frame(width: 105, height: 85, alignment: .center)
            .foregroundColor(Color("White"))
           // .shadow(radius: 0.7)
            .shadow(color: Color("000000").opacity(0.2), radius: 1, x: 0, y: 2)
            .overlay(
                Text(text)
                    .foregroundColor(Color("000000").opacity(0.7))
                    .font(Font.custom("poppins", size: 15))
                   // .fontWeight(.medium)
                    .multilineTextAlignment(.center)
            ).onTapGesture {
                callback()
            }
        
    }
}

struct BasicinfoCard_Previews: PreviewProvider {
    static var previews: some View {
        BasicinfoCard(callback: {
            
        })
    }
}
