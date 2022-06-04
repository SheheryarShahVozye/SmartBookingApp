//
//  NotificationScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 02/06/2022.
//

import SwiftUI

struct NotificationScreen: View {
    var textColor: String = "000000"
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Notification")
                ScrollView(showsIndicators: false){
                    VStack{
                        HStack{
                            Text("Today")
                                .font(Font.custom("poppins", size: 15))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(textColor).opacity(0.8))
                            
                            Spacer()
                        }.padding(.horizontal,25)
                        VStack{
                            ForEach(0 ..< 3,id:\.self){ _ in
                                NotificationCard()
                            }
                            
                        }
                        HStack{
                            Text("Last Week")
                                .font(Font.custom("poppins", size: 15))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(textColor).opacity(0.8))
                            
                            Spacer()
                        }.padding(.horizontal,25)
                            .padding(.vertical,5)
                        VStack{
                            ForEach(0 ..< 5,id:\.self){ _ in
                                NotificationCard()
                            }
                            
                        }
                        
                        Text("").opacity(0).frame(height: 80)
                    }
                }
                
            }
            VStack{
                Spacer()
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct NotificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationScreen()
    }
}
