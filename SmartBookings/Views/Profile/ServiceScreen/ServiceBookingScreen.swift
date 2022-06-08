//
//  ServiceBookingScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct ServiceBookingScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Service Bookings")
                HStack{
                    Text("See your service bookings")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
              
                ScrollView{
                    VStack{
                        ForEach(0 ..< 6,id:\.self) { _ in
                            ServiceBookingCard()
                        }
                    }
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct ServiceBookingScreen_Previews: PreviewProvider {
    static var previews: some View {
        ServiceBookingScreen()
    }
}
