//
//  CancellationPolicyScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct CancellationPolicyScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Booking Type")
                HStack{
                    Text("Cancellation Policy")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                HStack{
                    Text("Please select the cancellation policy")
                        .foregroundColor(Color("000000").opacity(0.6))
                        .font(Font.custom("poppins", size: 12))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                    .padding(.top,5)
                VStack{
                    VStack{
                        ForEach(0 ..< 4,id:\.self) { _ in
                            
                            CancelationCard()
                                .padding(5)
                        }
                    }
                    
                    Spacer()
                    
                    LoginButton(title: "Done", callback: {
                        
                    })
                }
                Spacer()
                BottomNavigation()
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct CancellationPolicyScreen_Previews: PreviewProvider {
    static var previews: some View {
        CancellationPolicyScreen()
    }
}
