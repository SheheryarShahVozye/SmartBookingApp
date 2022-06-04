//
//  MyBookings.swift
//  SmartBookings
//
//  Created by Sheheryar on 28/05/2022.
//

import SwiftUI

struct MyBookings: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var selected: String = "Upcoming"
    
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Bookings")
                VStack{
                    RoundedRectangle(cornerRadius: 7)
                        .foregroundColor(Color("White"))
                        .frame(width: UIScreen.main.bounds.width - 50, height: 60, alignment: .center)
                        .shadow(radius: 1)
                        .overlay(
                            HStack{
                                Group{
                                    if selected == "Upcoming" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("FEBB12"))
                                            .overlay(
                                             Text("Upcoming")
                                                .foregroundColor(Color("000000"))
                                                .font(Font.custom("poppins", size: 14))
                                                .fontWeight(.regular)
                                                
                                            )
                                    } else {
                                        Text("Upcoming")
                                            .foregroundColor(Color("000000").opacity(0.4))
                                           .font(Font.custom("poppins", size: 14))
                                           .fontWeight(.regular)
                                           .onTapGesture {
                                               selected = "Upcoming"
                                           }
                                    }
                                }.frame(width: 115, height: 50, alignment: .center)
                                
                                
                               
                                Spacer()
                                Group {
                                    if selected == "Completed" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("FEBB12"))
                                            
                                            .overlay(
                                             Text("Completed")
                                                .foregroundColor(Color("000000"))
                                                .font(Font.custom("poppins", size: 14))
                                                .fontWeight(.regular)
                                             
                                                
                                            )
                                    } else {
                                        Text("Completed")
                                            .foregroundColor(Color("000000").opacity(0.4))
                                           .font(Font.custom("poppins", size: 14))
                                           .fontWeight(.regular)
                                           .onTapGesture {
                                               selected = "Completed"
                                           }
                                    }
                                }.frame(width: 115, height: 50, alignment: .center)
                                
                                
                                Spacer()
                                Group {
                                    if selected == "Cancelled" {
                                        RoundedRectangle(cornerRadius: 7)
                                            .foregroundColor(Color("FEBB12"))
                                            .overlay(
                                             Text("Cancelled")
                                                .foregroundColor(Color("000000"))
                                                .font(Font.custom("poppins", size: 14))
                                                .fontWeight(.regular)
                                                
                                            )
                                    } else {
                                        Text("Cancelled")
                                            .foregroundColor(Color("000000").opacity(0.4))
                                           .font(Font.custom("poppins", size: 14))
                                           .fontWeight(.regular)
                                           .onTapGesture {
                                               selected = "Cancelled"
                                           }
                                        
                                    }
                                }.frame(width: 115, height: 50, alignment: .center)
                               
                               
                                
                            }.padding(.horizontal)
                        ).padding(.vertical,10)
                   
                    ScrollView{
                        ForEach(0 ..< 6,id:\.self) { _ in
                            BookingCard()
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

struct MyBookings_Previews: PreviewProvider {
    static var previews: some View {
        MyBookings()
    }
}
