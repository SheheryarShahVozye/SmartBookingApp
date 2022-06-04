//
//  Messages.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct Messages: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Messages")
                ScrollView{
                    HStack{
                        Text("Today")
                            .foregroundColor(Color("000000").opacity(0.7))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }.frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.vertical,10)
                    ForEach(0 ..< 3,id:\.self){ _ in
                        MessagesCard()
                    }
                    HStack{
                        Text("Last Week")
                            .foregroundColor(Color("000000").opacity(0.7))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }.frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.vertical)
                    
                    ForEach(0 ..< 5,id:\.self){ _ in
                        MessagesCard()
                    }
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
