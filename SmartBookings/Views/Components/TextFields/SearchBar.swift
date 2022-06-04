//
//  SearchBar.swift
//  SmartBookings
//
//  Created by Sheheryar on 19/05/2022.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchQuery: String
    var caption: String = "Search Hotel, Resorts Farms"
    var body: some View {
        RoundedRectangle(cornerRadius: 80)
            .foregroundColor(Color("White"))
            .frame(width: UIScreen.main.bounds.width - 50, height: 61, alignment: .center)
            .overlay(
                HStack{
                    TextField(caption, text: $searchQuery)
                        .foregroundColor(Color("000000").opacity(0.4))
                        .font(Font.custom("poppins", size: 12))
                        .padding(.leading,10)
                    Image("magnifyglass")
                }.padding(.horizontal)
            )
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchQuery: .constant(""))
            .preferredColorScheme(.dark)
    }
}
