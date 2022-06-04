//
//  SignUpScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 19/05/2022.
//

import SwiftUI

struct SignUpScreen: View {
    var textColor: String = "000000"
    var buttonbg: String = "FEBB12"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack{
                    
                    VStack{
                        Image("Group 8032")
                            .resizable()
                            .scaledToFit()
                    }.frame(width: 134.18, height: 135.12, alignment: .center)
                        .padding(.top,10)
                        .padding(.vertical,30)
                    
                   
                    VStack{
                        
                        HStack{
                            Text("CREATE ACCOUNT")
                                .font(Font.custom("poppins", size: 24))
                                .foregroundColor(Color(textColor))
                                .bold()
                                
                                    
                            Spacer()
                        }
                        HStack{
                            Text("Please Sign Up to Explore more ")
                                .font(Font.custom("poppins", size: 17))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor))
                                    
                            Spacer()
                        }
                       
                    }.padding(.horizontal,30)
                            .padding(.vertical)
                   
                    
                    LoginTextField(textNumber: .constant(""))
                            .padding(.vertical)
                    LoginButton(title:"Signup",callback: {
                        viewRouter.currentPage = "VerificationScreen"
                    }).padding(.vertical)
                    
                    
                    
                    
                        Text("Skip")
                            .font(Font.custom("poppins", size: 15))
                            .fontWeight(.regular)
                            .foregroundColor(Color(buttonbg))
                    
                    Spacer()
                }
               
                
                Spacer()
                VStack{
                    HStack{
                        
                            Text("Already Have an Account??")
                                .font(Font.custom("poppins", size: 12))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor))
                            
                            +
                            
                            Text(" Sign In")
                                .font(Font.custom("poppins", size: 12))
                                .fontWeight(.regular)
                                .foregroundColor(Color(buttonbg))
                        
                    }.onTapGesture {
                        viewRouter.currentPage = "LoginScreen"
                    }
                    
                   
                }.padding(.bottom,30)
                
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
