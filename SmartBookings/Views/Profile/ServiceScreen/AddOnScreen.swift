//
//  AddOnScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct AddOnScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Price Details")
                HStack{
                    Text("Add-ons")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                HStack{
                    Text("Please select Add-ons")
                        .foregroundColor(Color("000000").opacity(0.6))
                        .font(Font.custom("poppins", size: 12))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                    .padding(.top,5)
                VStack{
                    Group{
                        HStack{
                            
                            Circle()
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                                .opacity(0)
                            
                            Text("Name")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 15))
                                .fontWeight(.semibold)
                                
                            Spacer()
                            
                            Text("Price")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 15))
                                .fontWeight(.semibold)
                                .padding(.trailing,30)
                            
                        }
                        
                        HStack{
                            Circle()
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                            
                            Text("Sleepover")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 13))
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 92, height: 30, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                                .overlay(
                                    TextField("", text: .constant(""))
                                        .keyboardType(.numberPad)
                                        .padding(.leading)
                                )
                            
                        }
                        
                        HStack{
                            Circle()
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                            
                            Text("Birthday Arrangements")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 13))
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 92, height: 30, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                                .overlay(
                                    TextField("", text: .constant(""))
                                        .keyboardType(.numberPad)
                                        .padding(.leading)
                                )
                            
                        }
                        
                        HStack{
                            Circle()
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                            
                            Text("Wedding Arrangements")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 13))
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 92, height: 30, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                                .overlay(
                                    TextField("", text: .constant(""))
                                        .keyboardType(.numberPad)
                                        .padding(.leading)
                                )
                            
                        }
                        
                        HStack{
                            Circle()
                                .frame(width: 25, height: 25, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                            
                            Text("Buffets")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 13))
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 92, height: 30, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                                .overlay(
                                    TextField("", text: .constant(""))
                                        .keyboardType(.numberPad)
                                        .padding(.leading)
                                )
                            
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    LoginButton(title: "Review Service", callback: {
                        
                    })
                        .padding(.bottom,30)
                    

                }
                
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct AddOnScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddOnScreen()
    }
}
