//
//  LoginScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 18/05/2022.
//

import SwiftUI

struct LoginScreen: View {
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
                            Text("LOGIN")
                                .font(Font.custom("poppins", size: 24))
                                .foregroundColor(Color(textColor))
                                .bold()
                                
                                    
                            Spacer()
                        }
                        HStack{
                            Text("Please Sign In to continue")
                                .font(Font.custom("poppins", size: 17))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor))
                                    
                            Spacer()
                        }
                       
                    }.padding(.horizontal,30)
                            .padding(.vertical)
                   
                    
                    LoginTextField(textNumber: .constant(""))
                            .padding(.vertical)
                    LoginButton(callback: {
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
                        
                            Text("Don’t Have an Account?")
                                .font(Font.custom("poppins", size: 15))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor))
                            
                            +
                            
                            Text(" SignUp")
                                .font(Font.custom("poppins", size: 15))
                                .fontWeight(.regular)
                                .foregroundColor(Color(buttonbg))
                               
                        
                    } .onTapGesture {
                        viewRouter.currentPage = "SignUpScreen"
                    }
                    
                   
                }.padding(.bottom,30)
                
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

struct textmodifier : ViewModifier {
    var size: CGFloat
    var ColorName: String
    var weight: UIFont.Weight
    func body(content: Content) -> some View {
        content
            .font(.custom("poppins", size: size))
            .foregroundColor(Color(ColorName))
           

    }
}
