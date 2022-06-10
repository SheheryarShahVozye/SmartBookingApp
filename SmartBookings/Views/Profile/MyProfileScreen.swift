//
//  MyProfileScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 03/06/2022.
//

import SwiftUI

struct MyProfileScreen: View {
    var textColor: String = "000000"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "My Profile")
                ScrollView{
                    VStack{
                        ZStack{
                            Image("VendorProfileImage")
                            VStack{
                                Spacer()
                                HStack{
                                    Spacer()
                                    Image("Uploadimage")
                                }
                               
                            }
                        }.frame(width: 130, height: 150, alignment: .center)
                        
                        HStack{
                            Text("Joined: 08 Aug, 2022")
                                .font(Font.custom("poppins", size: 14))
                                .foregroundColor(Color(textColor).opacity(0.4))
                                .fontWeight(.regular)
                            
                        }.padding(.top,5)
                        
                        HStack{
                            Text("Personal Information")
                                .font(Font.custom("poppins", size: 14))
                                .foregroundColor(Color(textColor).opacity(0.8))
                                .fontWeight(.semibold)
                            Spacer()
                        }.padding(.vertical,10)
                            .padding(.horizontal)
                        VStack{
                            
                            Group{
                                ProfileTextfield(placeHolder: "First Name", textValue: .constant(""), verified: false)
                                    .padding(.top,10)
                                ProfileTextfield(placeHolder: "Last Name", textValue: .constant(""), verified: false)
                                    .padding(.top,10)
                                ProfileTextfield(placeHolder: "Mobile Number", textValue: .constant(""), verified: false,keyboardType: .numberPad)
                                    .padding(.top,10)
                                ProfileTextfield(placeHolder: "Email", textValue: .constant(""), verified: false,keyboardType: .emailAddress)
                                    .padding(.top,10)
                            }
                            
                            Group {
                                ProfileDatePicker(date: .constant(Date()))
                                    .padding(.top,10)
                                
                                ProfileTextfield(
                                    placeHolder: "Address",
                                    textValue: .constant(""),
                                    verified: false,
                                    keyboardType: .default)
                                    .padding(.top,10)
                                
                                ProfileTextfield(
                                    placeHolder: "Address",
                                    textValue: .constant(""),
                                    verified: false,
                                    keyboardType: .default)
                                    .padding(.top,10)
                                
                                ProfileDropDown(placeHolder: "", textValue: .constant("Nationality"), status: false)
                                    .padding(.top,10)
                                
                                ProfileTextfield(
                                    placeHolder: "ID Number",
                                    textValue: .constant(""),
                                    verified: false,
                                    keyboardType: .default)
                                    .padding(.top,10)
                            }
                           
                            
                            
                            LoginButton(title: "Update", callback: {
                                
                            })
                        }
                        
                        
                    }
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct MyProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileScreen()
    }
}
