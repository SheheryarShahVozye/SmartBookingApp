//
//  ProfileTextfield.swift
//  SmartBookings
//
//  Created by Sheheryar on 03/06/2022.
//

import SwiftUI

struct ProfileTextfield: View {
    var placeHolder: String = "First Name"
    @Binding var textValue: String
    var verified: Bool = true
    var keyboardType: UIKeyboardType = .default
    var body: some View {
        RoundedRectangle(cornerRadius: 97)
            .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
            .overlay(
                VStack{
                    HStack{
                        TextField(placeHolder, text: $textValue)
                            .font(Font.custom("poppins", size: 15))
                            .foregroundColor(Color("000000"))
                            .keyboardType(keyboardType)
                           
                        if verified {
                            Text("Verified")
                                .font(Font.custom("poppins", size: 12))
                                .fontWeight(.regular)
                                .foregroundColor(Color("57B142"))
                                
                        }

                    }.padding(.horizontal,30)
                }
            )
    }
}

struct ProfileTextfield_Previews: PreviewProvider {
    static var previews: some View {
       // ProfileTextfield(textValue: .constant("Hello"))
        ProfileDropDown(textValue: .constant("Hello"))
        ProfileDatePicker(date: .constant(Date()))
    }
}


struct ProfileDropDown: View {
    var placeHolder: String = "First Name"
    @Binding var textValue: String
    var status: Bool = true
    var keyboardType: UIKeyboardType = .default
    var body: some View {
        RoundedRectangle(cornerRadius: 97)
            .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
            .overlay(
                VStack{
                    HStack{
                        Text(textValue)
                            .font(Font.custom("poppins", size: 15))
                            .foregroundColor(Color("000000").opacity(0.5))
                            .fontWeight(.regular)
                           
                        Spacer()
                        if status {
                            Image("chevrondown")
                                .frame(width: 12, height: 12, alignment: .trailing)
                        }

                    }.padding(.horizontal,30)
                }
            )
    }
}


struct ProfileDatePicker: View {
    var placeHolder: String = "Date of birth"
    @Binding var date: Date
    var status: Bool = true
    var keyboardType: UIKeyboardType = .default
    var body: some View {
        
        RoundedRectangle(cornerRadius: 97)
            .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
            .overlay(
                ZStack{
                    DatePicker("label", selection: $date, displayedComponents: [.date])
                                   .datePickerStyle(CompactDatePickerStyle())
                                   .labelsHidden()
                   
                        HStack{
                            Text(placeHolder)
                                .font(Font.custom("poppins", size: 15))
                                .foregroundColor(Color("000000").opacity(0.5))
                                .fontWeight(.regular)
                               
                            Spacer()
                           

                        }.userInteractionDisabled()
                        .padding(.horizontal,30)
                    
                }
                
            )
    }
}
