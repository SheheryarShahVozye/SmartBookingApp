//
//  Deals.swift
//  SmartBookings
//
//  Created by Sheheryar on 29/05/2022.
//

import SwiftUI

struct Deals: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Deals")
                VStack{
                    
                   
                    ScrollView{
                        ForEach(0 ..< 6,id:\.self) { _ in
                            DealCard()
                                .padding(5)
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

struct Deals_Previews: PreviewProvider {
    static var previews: some View {
        Deals()
    }
}
