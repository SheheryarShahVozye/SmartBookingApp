//
//  TopNavigation.swift
//  SmartBookings
//
//  Created by Sheheryar on 23/05/2022.
//

import SwiftUI

struct TopNavigation: View {
    var textColor: String = "000000"
    var buttonbg: String = "FEBB12"
    var titleText: String = "Verification"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                VStack {}
                    .padding(.top, (AppUtil.getNotch() == true ? 30 : 10 ))
                HStack{
                    
                    Image("Path 10545")
                        .resizable()
                        .frame(width: 11.4, height: 21.17, alignment: .leading)
                        .onTapGesture {
                            viewRouter.goBack()
                        }
                        //.padding(.leading,20)
                       
                        
                    Spacer()
                    Text(titleText)
                        .font(Font.custom("poppins", size: 18))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.regular)
                        //.padding(.leading)
                       
                        //.offset(x:-10)
                    Spacer()
                    
//                    Circle()
//                        .frame(width: 45, height: 45, alignment: .center)
//                        .foregroundColor(Color("White"))
//                        .shadow(radius: 0.4)
//                        .overlay(
//                          Image("Group 3797")
//                            .resizable()
//                            .frame(width: 28, height: 28, alignment: .center)
//                        )

                    
                }.padding(.vertical,20)
                    .padding(.horizontal)
            }.padding(.bottom,0)
        } .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width)
            .scaledToFit()
       
    }
}


struct TopNavigationWithFilter: View {
    var textColor: String = "000000"
    var buttonbg: String = "FEBB12"
    var titleText: String = "Verification"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                VStack {}
                    .padding(.top, (AppUtil.getNotch() == true ? 30 : 10 ))
                HStack{
                    
                    Image("Path 10545")
                        .resizable()
                        .frame(width: 11.4, height: 21.17, alignment: .leading)
                        //.padding(.leading,20)
                       
                        
                    Spacer()
                    Text(titleText)
                        .font(Font.custom("poppins", size: 18))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.regular)
                        .padding(.leading,30)
                       
                        //.offset(x:-10)
                    Spacer()
                    
                    Circle()
                        .frame(width: 45, height: 45, alignment: .center)
                        .foregroundColor(Color("White"))
                        .shadow(radius: 0.4)
                        .overlay(
                          Image("Group 3797")
                            .resizable()
                            .frame(width: 28, height: 28, alignment: .center)
                        )

                    
                }.padding(.vertical,20)
                    .padding(.horizontal)
            }.padding(.bottom,0)
        } .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width)
            .scaledToFit()
       
    }
}

struct TopNavigation_Previews: PreviewProvider {
    static var previews: some View {
        //TopNavigation()
        TopNavigationWithFilter()
    }
}
