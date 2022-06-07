//
//  ServiceDescription.swift
//  SmartBookings
//
//  Created by Sheheryar on 05/06/2022.
//

import SwiftUI

struct ServiceDescription: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Service Description")
                VStack{
                    HStack{
                        Text("Safety")
                            .foregroundColor(Color("000000").opacity(0.8))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,10)
                    HStack{
                        Text("Please select the safety types")
                            .foregroundColor(Color("000000").opacity(0.6))
                            .font(Font.custom("poppins", size: 12))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,10)
                        .padding(.top,5)
                }
                ScrollView{
                    VStack{
                        Group {
                            ProfileTextfield(placeHolder: "Service Name (English)", textValue: .constant(""), keyboardType: .default)
                               
                            ProfileTextfield(placeHolder: "Service Name (Arabic)", textValue: .constant(""), keyboardType: .default)
                              
                            ProfileTextfield(placeHolder: "Secondary Phone Number", textValue: .constant(""), keyboardType: .default)
                               
                            ProfileTextfield(placeHolder: "Area", textValue: .constant(""), keyboardType: .default)
                               
                            ProfileTextfield(placeHolder: "Area", textValue: .constant(""), keyboardType: .default)
                               
                        } .padding(.top)

                    
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 175, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(radius: 1)
                            .overlay(
                                VStack{
                                    TextEditor(text: .constant("dadadadadad"))
                                        .frame(width: UIScreen.main.bounds.width - 70, height: 165, alignment: .center)
                                       .lineSpacing(10)
                                       .autocapitalization(.words)
                                       .disableAutocorrection(true)
                                       .cornerRadius(45)
                                       
                                }.padding(.horizontal)
                            ) .padding(.top,10)
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 175, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(radius: 1)
                            .overlay(
                                VStack{
                                    TextEditor(text: .constant("dadadadadad"))
                                        .frame(width: UIScreen.main.bounds.width - 70, height: 165, alignment: .center)
                                       .lineSpacing(10)
                                       .autocapitalization(.words)
                                       .disableAutocorrection(true)
                                       .cornerRadius(45)
                                       
                                }.padding(.horizontal)
                            ) .padding(.top,10)
                       
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: UIScreen.main.bounds.width - 50, height: 175, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(color: Color("000000").opacity(0.2), radius: 1, x: 0, y: 2)
                            .overlay(
                                VStack{
                                    Text("Add Service Images")
                                        .font(Font.custom("poppins", size: 15))
                                        .foregroundColor(Color("000000"))
                                        .fontWeight(.light)
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .foregroundColor(Color("FEBB12"))
                                        .frame(width: 146, height: 47, alignment: .center)
                                        .overlay(
                                            Text("Add Images")
                                                .font(Font.custom("poppins", size: 14))
                                                .foregroundColor(Color("04304B"))
                                                .fontWeight(.medium)
                                            
                                        )
                                    
                                }
                            ).padding(.top)
                    }
                    .padding(5)
                    LoginButton(title: "Next", callback: {
                        
                    }).padding(.bottom)
                    
                }
                
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct ServiceDescription_Previews: PreviewProvider {
    static var previews: some View {
        ServiceDescription()
    }
}
