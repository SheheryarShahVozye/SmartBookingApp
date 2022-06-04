//
//  BasicInformation.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct BasicInformation: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Basic Information")
                ScrollView{
                    VStack{
                        
                    }
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct BasicInformation_Previews: PreviewProvider {
    static var previews: some View {
        BasicInformation()
    }
}
