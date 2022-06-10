//
//  FilterDropDown.swift
//  SmartBookings
//
//  Created by Sheheryar on 10/06/2022.
//

import SwiftUI

struct FilterDropDown: View {
     var caption: String = "Destination"
    @Binding var textNumber: String
    var callback: () -> Void = {}
    
    var body: some View {
       RoundedRectangle(cornerRadius: 100)
            .foregroundColor(Color.white)
            .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
            
            .shadow(color: Color("707070").opacity(0.7), radius: 1, x: 0, y: 2)
            .overlay(
                VStack{
                    HStack{
                        Text(caption)
                            .foregroundColor(Color("000000"))
                            .font(Font.custom("poppins", size: 14))
                            .fontWeight(.light)
                           
                        Spacer()
                       
                        Image("chevrondown")
                            .resizable()
                            .frame(width: 15, height: 8, alignment: .center)
                            .onTapGesture {
                                callback()
                            }
                        
                    }.padding(.horizontal,30)
                }
            )
    }
}

struct FilterDropDown_Previews: PreviewProvider {
    static var previews: some View {
        FilterDropDown(caption: "Destination",textNumber: .constant(""))
    }
}
