//
//  VerificationComplete.swift
//  SmartBookings
//
//  Created by Sheheryar on 19/05/2022.
//

import SwiftUI

struct VerificationComplete: View {
    var textColor: String = "000000"
    var buttonbg: String = "FEBB12"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
       
        ZStack{
            VStack{
                HStack{
                    Image("Path 10545")
                        .resizable()
                        .frame(width: 11.4, height: 21.17, alignment: .leading)
                        .padding(.leading,20)
                        
                    Spacer()
                    Text("Verification")
                        .font(Font.custom("poppins", size: 18))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.regular)
                        .padding(.trailing)
                        .offset(x:-10)
                    Spacer()
                }
                .padding(.top,50)
               
                ZStack{
                    Image("Group 8231")
                    Image("Group 8233")
                }.padding(.vertical,30)
                
                Text("Verified Successfully!")
                    .font(Font.custom("poppins", size: 24))
                    .foregroundColor(Color(textColor))
                    .fontWeight(.semibold)
                    .padding(.vertical)
                   
                
                Text("Your code has been verified Successfully. Please continue.")
                    .font(Font.custom("poppins", size: 14))
                    .foregroundColor(Color(textColor))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .frame(width: UIScreen.main.bounds.width - 70)
                  
                
                LoginButton(title:"Continue",callback: {
                    viewRouter.currentPage = "Dashboard"
                }).padding(.vertical)
                
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct VerificationComplete_Previews: PreviewProvider {
    static var previews: some View {
        VerificationComplete()
    }
}
