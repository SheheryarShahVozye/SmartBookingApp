//
//  SplashScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 16/05/2022.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            VStack{
                Image("Group 8213")
                    .resizable()
                    .scaledToFit()
                
            }.frame(width: 320, height: 300, alignment: .center)
           
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}




