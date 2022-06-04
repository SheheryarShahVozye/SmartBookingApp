//
//  BottomNavigation.swift
//  SmartBookings
//
//  Created by Sheheryar on 19/05/2022.
//

import SwiftUI

struct BottomNavigation: View {
    
    var textColor: String = "C8CBCE"
    var buttonbg: String = "FEBB12"
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        HStack{
            
            Spacer()
            VStack{
                Spacer()
                Image("home")
                    .padding(.horizontal,10)
                    .padding(.bottom,5)
                    
                Text("Home")
                    .font(Font.custom("poppins", size: 9))
                    .foregroundColor(Color(buttonbg))
                    .fontWeight(.medium)
                Spacer()
            }.onTapGesture {
                viewRouter.currentPage = "Dashboard"
                
            }
           
            
            Spacer()
            
            VStack{
                Spacer()
                Image("booking")
                    .padding(.horizontal,10)
                    .padding(.bottom,5)
                    
                Text("Bookings")
                    .font(Font.custom("poppins", size: 9))
                    .foregroundColor(Color(textColor))
                    .fontWeight(.medium)
                Spacer()
            }.onTapGesture {
                viewRouter.currentPage = "MyBookings"
            }
            
           
            Spacer()
           
            VStack{
                Spacer()
                Image("deals")
                    .padding(.horizontal,10)
                    .padding(.bottom,5)
                    
                Text("Deals")
                    .font(Font.custom("poppins", size: 9))
                    .foregroundColor(Color(textColor))
                    .fontWeight(.medium)
                Spacer()
            }.onTapGesture {
                viewRouter.currentPage = "Deals"
            }
            
            Group {
                Spacer()
                VStack{
                    Spacer()
                    Image("hearts")
                        .padding(.horizontal,10)
                        .padding(.bottom,5)
                        
                    Text("Saved")
                        .font(Font.custom("poppins", size: 9))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.medium)
                    Spacer()
                }.onTapGesture {
                    //viewRouter.currentPage = "AppointmentDashboard"
                }
                Spacer()
             
                VStack{
                    Spacer()
                    Image("users")
                        .padding(.horizontal,10)
                        .padding(.bottom,5)
                        
                    Text("More")
                        .font(Font.custom("poppins", size: 9))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.medium)
                    Spacer()
                }.onTapGesture {
                    viewRouter.currentPage = "Profile"
                }
                
                Spacer()
            }

           
          
            
           
       
        }.frame(width: UIScreen.main.bounds.width,height: 80)
            .background(Color("White"))
    }
}

struct BottomNavigation_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigation()
    }
}
