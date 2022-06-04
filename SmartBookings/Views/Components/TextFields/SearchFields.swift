//
//  SearchFields.swift
//  SmartBookings
//
//  Created by Sheheryar on 23/05/2022.
//

import SwiftUI

struct SearchFields: View {
    @Binding var searchQuery: String
    var caption: String = "Check-In"
    var imageName: String = "Group 3814"
    var body: some View {
        RoundedRectangle(cornerRadius: 80)
            .foregroundColor(Color("White"))
            .frame(width: UIScreen.main.bounds.width - 50, height: 61, alignment: .center)
            .overlay(
                HStack{
                    Image(imageName)
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .padding(.leading)

                    TextField(caption, text: $searchQuery)
                        .foregroundColor(Color("000000").opacity(0.4))
                        .font(Font.custom("poppins", size: 12))
                        .padding(.leading,10)
                   
                }.padding(.horizontal)
            )
        
    }
}

struct SearchFields_Previews: PreviewProvider {
    static var previews: some View {
        SearchFields(searchQuery: .constant(""))
    }
}
