//
//  MyServiceScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct MyServiceScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "My Services")
                HStack{
                    Text("Your added services")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                HStack{
                    Text("You can View, Edit and delete your services")
                        .foregroundColor(Color("000000").opacity(0.6))
                        .font(Font.custom("poppins", size: 12))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                    .padding(.top,5)
                ScrollView{
                    VStack{
                        ForEach(0 ..< 6,id:\.self) { _ in
                            MyServiceCard()
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

struct MyServiceScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyServiceScreen()
    }
}
