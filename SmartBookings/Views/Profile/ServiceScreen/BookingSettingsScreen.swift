//
//  BookingSettingsScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct BookingSettingsScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Price Details")
                HStack{
                    Text("Booking Settings")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                HStack{
                    Text("Please select the booking settings")
                        .foregroundColor(Color("000000").opacity(0.6))
                        .font(Font.custom("poppins", size: 12))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                    .padding(.top,5)
                HStack{
                    Text("Category")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                    .padding(.vertical,5)
                ScrollView{
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 110, height: 115, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
                            .overlay(
                                VStack{
                                    VStack{
                                        Image("FamiliesAndSingle")
                                            .scaledToFit()
                                    }.frame(width: 45, height: 30, alignment: .center)
                                  
                                        
                                    
                                    Text("Families & Singles")
                                        .foregroundColor(Color("000000").opacity(0.7))
                                        .font(Font.custom("poppins", size: 15))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.center)

                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 110, height: 115, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
                            .overlay(
                                VStack{
                                    VStack{
                                        Image("FamilyOnly")
                                            .scaledToFit()
                                    }.frame(width: 38, height: 41, alignment: .center)
                                  
                                        
                                    
                                    Text("Families Only")
                                        .foregroundColor(Color("000000").opacity(0.7))
                                        .font(Font.custom("poppins", size: 15))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.center)

                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 110, height: 115, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
                            .overlay(
                                VStack{
                                    VStack{
                                        Image("LadyOnly")
                                            .scaledToFit()
                                    }.frame(width: 34, height: 49, alignment: .center)
                                  
                                        
                                    
                                    Text("Ladies Only")
                                        .foregroundColor(Color("000000").opacity(0.7))
                                        .font(Font.custom("poppins", size: 15))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.center)

                                }
                            )
                    }
                    .padding(.horizontal)
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: UIScreen.main.bounds.width - 70, height: 72, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
                            .overlay(
                                VStack{
                                    HStack{
                                        Text("Booking Type")
                                            .foregroundColor(Color("000000").opacity(0.7))
                                            .font(Font.custom("poppins", size: 16))
                                            .fontWeight(.regular)
                                        Spacer()
                                    }.padding(.horizontal)
                                    HStack{
                                        Text("Booking Type name here")
                                            .foregroundColor(Color("000000").opacity(0.5))
                                            .font(Font.custom("poppins", size: 11))
                                            .fontWeight(.regular)
                                        Spacer()
                                    }.padding(.horizontal)
                                }
                            
                            ).onTapGesture{
                                viewRouter.currentPage = "BookingTypes"
                            }
                        
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: UIScreen.main.bounds.width - 70, height: 72, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
                            .overlay(
                                VStack{
                                    HStack{
                                        Text("Cancellation Policy ")
                                            .foregroundColor(Color("000000").opacity(0.7))
                                            .font(Font.custom("poppins", size: 16))
                                            .fontWeight(.regular)
                                        Spacer()
                                    }.padding(.horizontal)
                                    HStack{
                                        Text("Cancellation Policy name here")
                                            .foregroundColor(Color("000000").opacity(0.5))
                                            .font(Font.custom("poppins", size: 11))
                                            .fontWeight(.regular)
                                        Spacer()
                                    }.padding(.horizontal)
                                }
                            
                            ).onTapGesture{
                                viewRouter.currentPage = "CancellationPolicyScreen"
                            }
                        
                        
                    }.padding(.vertical)
                   
                    VStack{
                        HStack{
                            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                                Text("Security Deposit")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }
                        }.padding(.horizontal)
                    }
                    
                    VStack{
                        HStack{
                            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                                Text("Last Minute Discount")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }
                        }.padding(.horizontal)
                    }
                    
                    HStack{
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Integer consectetur nulla at enim aliqu et, lobortis ipsum molestie.")
                            .foregroundColor(Color("000000").opacity(0.5))
                            .font(Font.custom("poppins", size: 12))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.leading)
                            .frame(width: 300)
                        
                        Spacer()
                        
                    }.padding(.horizontal)
                    
                    LoginButton(title: "Next", callback: {
                        viewRouter.currentPage = "AddOnScreen"
                    })
                    
                  
                }
                
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct BookingSettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookingSettingsScreen()
    }
}
