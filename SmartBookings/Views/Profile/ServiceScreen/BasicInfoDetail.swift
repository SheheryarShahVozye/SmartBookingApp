//
//  BasicInfoDetail.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct BasicInfoDetail: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Basic Information")
                
                VStack{
                    HStack{
                        Text("Room & Guests")
                            .foregroundColor(Color("000000").opacity(0.8))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,30)
                    HStack{
                        Text("Please select the available rooms & guests")
                            .foregroundColor(Color("000000").opacity(0.6))
                            .font(Font.custom("poppins", size: 12))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,30)
                }
                
                ScrollView{
                    VStack{
                        
                       
                        Group {
                            ProfileTextfield(placeHolder: "Sections", textValue: .constant(""))
                                .padding(.top,5)
                            
                            ProfileTextfield(placeHolder: "Bedrooms", textValue: .constant(""),keyboardType: .numberPad)
                                .padding(.top,5)
                            
                            ProfileTextfield(placeHolder: "Double Beds", textValue: .constant(""))
                                .padding(.top,5)
                            
                            ProfileTextfield(placeHolder: "Single Beds", textValue: .constant(""))
                                .padding(.top,5)
                            
                            ProfileTextfield(placeHolder: "Indoor Seating", textValue: .constant(""))
                                .padding(.top,5)
                            
                            
                        }
                        Group{
                            
                            ProfileTextfield(placeHolder: "Outdoor Seating", textValue: .constant(""))
                                .padding(.top,5)
                            
                            ProfileTextfield(placeHolder: "Additional Seating", textValue: .constant(""))
                                .padding(.top,5)
                            
                            ProfileTextfield(placeHolder: "Bathrooms", textValue: .constant(""))
                                .padding(.top,5)
                            
                            ProfileTextfield(placeHolder: "Maximum Guests", textValue: .constant(""))
                                .padding(.top,5)
                           
                        }
                        
                        LoginButton(title: "Next", callback: {
                            
                        })
                       
                    }.padding()
                }
                BottomNavigation()
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct BasicInfoDetail_Previews: PreviewProvider {
    static var previews: some View {
        BasicInfoDetail()
    }
}
