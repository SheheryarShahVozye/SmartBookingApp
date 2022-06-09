//
//  CompanyProfile.swift
//  SmartBookings
//
//  Created by Sheheryar on 09/06/2022.
//

import SwiftUI

struct CompanyProfile: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Become Vendor")
               
                    HStack{
                        Text("I Represent the")
                            .foregroundColor(Color("000000").opacity(0.9))
                            .font(Font.custom("poppins", size: 20))
                            .fontWeight(.regular)
                        
                        Text("Company")
                            .foregroundColor(Color("FEBB12").opacity(0.9))
                            .font(Font.custom("poppins", size: 20))
                            .fontWeight(.regular)
                    }.padding(.vertical)
                    
                    HStack{
                        Text("Please enter the details")
                            .foregroundColor(Color("000000").opacity(0.7))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }.padding(.horizontal)
                ScrollView{
                    Group{
                        ProfileTextfield(placeHolder: "First Name", textValue: .constant(""))
                           
                        ProfileTextfield(placeHolder: "Last Name", textValue: .constant(""))
                           
                        ProfileTextfield(placeHolder: "Mobile Number", textValue: .constant(""),verified: true,keyboardType: .numberPad)
                           
                        ProfileTextfield(placeHolder: "Email", textValue: .constant(""),verified: true,keyboardType: .default)
                           
                        ProfileTextfield(placeHolder: "Address", textValue: .constant(""))
                            
                        ProfileTextfield(placeHolder: "Commercial ID No", textValue: .constant(""))
                            
                    }.padding(.vertical,5)
                    
                    HStack{
                        Text("Upload Commercial ID")
                            .foregroundColor(Color("000000").opacity(0.7))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }.padding(.horizontal)
                    HStack{
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 150, height: 50, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(radius: 1)
                            .overlay(
                              Text("Upload File")
                                .foregroundColor(Color("FEBB12"))
                                .font(Font.custom("poppins", size: 16))
                                .fontWeight(.regular)
                            )
                    }
                    
                    LoginButton(title: "Done", callback: {
                        
                    }).padding(.vertical)
                 
                }
                
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct CompanyProfile_Previews: PreviewProvider {
    static var previews: some View {
        CompanyProfile()
    }
}
