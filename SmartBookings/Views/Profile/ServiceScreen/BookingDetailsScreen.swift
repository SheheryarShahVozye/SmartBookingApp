//
//  BookingDetailsScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct BookingDetailsScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Booking Details")
                HStack{
                    Text("See booking details")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                ScrollView{
                    VStack{
                        HStack{
                            Image("VendorProfileImage")
                                .resizable()
                                .scaledToFit()
                        }.frame(width: 87, height: 91, alignment: .center)
                        Group{
                            HStack{
                                Text("Customer Name")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("Lorem Ipsum")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Booking ID")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("Lorem Ipsum")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Customer ID")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("Lorem Ipsum")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Vendor ID")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("Lorem Ipsum")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Booking Date")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("24/05/2022")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Booking Time")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("11:00 PM")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            
                        }.padding(.horizontal)
                            .padding(.top,5)
                        
                        Group {
                            
                            HStack{
                                Text("Email")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("loremipsum@gmail.com")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Mobile Number")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("+966 12145678")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Service Name")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("Lorem Ipsum Hotel")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Location")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("Riyadh")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Nights")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("2")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Check-in Date")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("22/05/2022")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                        }
                        .padding(.horizontal)
                            .padding(.top,5)
                        
                        Group{
                            HStack{
                                Text("Check-out Date")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("24/05/2022")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Check-in Time")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("11:00 AM")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Check-out Time")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("12:00 PM")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                            
                            HStack{
                                Text("Total Price")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                                Spacer()
                                
                                Text("SAR 500")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                
                            }
                        }
                        .padding(.horizontal)
                            .padding(.top,5)
                    }
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct BookingDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookingDetailsScreen()
    }
}
