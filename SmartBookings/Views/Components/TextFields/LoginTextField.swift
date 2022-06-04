//
//  LoginTextField.swift
//  SmartBookings
//
//  Created by Sheheryar on 18/05/2022.
//

import SwiftUI

struct LoginTextField: View {
    @Binding var textNumber: String
    var body: some View {
       RoundedRectangle(cornerRadius: 100)
            .foregroundColor(Color.white)
            .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
            
            .shadow(color: Color("707070").opacity(0.7), radius: 1, x: 0, y: 2)
            .overlay(
                VStack{
                    HStack{
                        HStack{
                            Image("flag")
                              .resizable()
                                .scaledToFit()
                        }.frame(width: 35, height: 35, alignment: .leading)
                        Text("+965")
                            .foregroundColor(Color("000000"))
                            .font(Font.custom("poppins", size: 18))
                            .fontWeight(.light)
                           
                        TextField("Mobile Number", text: $textNumber)
                            .foregroundColor(Color("000000").opacity(0.4))
                            .font(Font.custom("poppins", size: 18))
                            .padding(.leading,10)

                    }.padding(.horizontal,20)
                }
            )
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField(textNumber: .constant(""))
    }
}
