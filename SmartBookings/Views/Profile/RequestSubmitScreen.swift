//
//  RequestSubmitScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 09/06/2022.
//

import SwiftUI

struct RequestSubmitScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Become Vendor")
                ZStack{
                    Image("Group 8231")
                        .resizable()
                        .scaledToFit()
                    Image("Group 8233")
                        .resizable()
                        .frame(width: 140, height: 140, alignment: .center)

                }.frame(width: 175, height: 175, alignment: .center)
                HStack{
                    Text("Request Submitted Successfully!")
                        .foregroundColor(Color("000000").opacity(0.7))
                        .font(Font.custom("poppins", size: 20))
                        .fontWeight(.medium)
                }
                
                HStack{
                    Text("Your request for become Vendor have been sent successfully. Once it approved you will get the notification.")
                        .foregroundColor(Color("000000").opacity(0.7))
                        .font(Font.custom("poppins", size: 14))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                }.padding(.horizontal)
                    .padding(.top)
                
                LoginButton(title: "Done", callback: {
                    
                }).padding(.top)
                
                Spacer()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct RequestSubmitScreen_Previews: PreviewProvider {
    static var previews: some View {
        RequestSubmitScreen()
    }
}
