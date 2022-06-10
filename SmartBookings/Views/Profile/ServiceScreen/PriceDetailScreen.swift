//
//  PriceDetailScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 07/06/2022.
//

import SwiftUI

struct PriceDetailScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var fromDate: Date = Date()
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Price Details")
                HStack{
                    Text("Pricing")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                HStack{
                    Text("Please enter the pricing for your service")
                        .foregroundColor(Color("000000").opacity(0.6))
                        .font(Font.custom("poppins", size: 12))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                    .padding(.top,5)
                ScrollView{
                    VStack{
                        Group {
                            HStack{
                                
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .opacity(0)
                                
                                Text("Name")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.semibold)
                                    
                                Spacer()
                                
                                Text("Price")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.semibold)
                                    .padding(.trailing,30)
                                
                            }
                            
                            HStack{
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                
                                Text("Weekdays(Sun - Wed)")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 92, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .overlay(
                                        TextField("", text: .constant(""))
                                            .keyboardType(.numberPad)
                                            .padding(.leading)
                                    )
                                
                            }
                            
                            HStack{
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                
                                Text("Sunday")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 92, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .overlay(
                                        TextField("", text: .constant(""))
                                            .keyboardType(.numberPad)
                                            .padding(.leading)
                                    )
                                
                            }
                            
                            HStack{
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                
                                Text("Monday")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 92, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .overlay(
                                        TextField("", text: .constant(""))
                                            .keyboardType(.numberPad)
                                            .padding(.leading)
                                    )
                                
                            }
                            
                            HStack{
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                
                                Text("Tuesday")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 92, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .overlay(
                                        TextField("", text: .constant(""))
                                            .keyboardType(.numberPad)
                                            .padding(.leading)
                                    )
                                
                            }
                        }
                        .padding(.horizontal)
                        
                        Group {
                            HStack{
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                
                                Text("Wednesday")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 92, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .overlay(
                                        TextField("", text: .constant(""))
                                            .keyboardType(.numberPad)
                                            .padding(.leading)
                                    )
                                
                            }
                            
                            HStack{
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                
                                Text("Thursday")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 92, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .overlay(
                                        TextField("", text: .constant(""))
                                            .keyboardType(.numberPad)
                                            .padding(.leading)
                                    )
                                
                            }
                            
                            HStack{
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                
                                Text("Friday")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 92, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .overlay(
                                        TextField("", text: .constant(""))
                                            .keyboardType(.numberPad)
                                            .padding(.leading)
                                    )
                                
                            }
                            
                            HStack{
                                Circle()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                
                                Text("Saturday")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 13))
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 92, height: 30, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(radius: 1)
                                    .overlay(
                                        TextField("", text: .constant(""))
                                            .keyboardType(.numberPad)
                                            .padding(.leading)
                                    )
                                
                            }
                            
                            
                        }.padding(.horizontal)
                        
                        Divider()
                            .padding(.vertical)
                        
                        VStack{
                            Text("How long the service will be open for booking?")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 14))
                                .fontWeight(.regular)
                                .padding(.horizontal)
                            
                            
                            VStack{
                                RoundedRectangle(cornerRadius: 97)
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
                                    .overlay(
                                        ZStack{
                                            DatePicker("label", selection: $fromDate, displayedComponents: [.date])
                                                           .datePickerStyle(CompactDatePickerStyle())
                                                           .labelsHidden()
                                           
                                                HStack{
                                                    Text("From Date")
                                                        .font(Font.custom("poppins", size: 15))
                                                        .foregroundColor(Color("000000").opacity(0.5))
                                                        .fontWeight(.regular)
                                                       
                                                    Spacer()
                                                   

                                                }.userInteractionDisabled()
                                                .padding(.horizontal,30)
                                            
                                        }
                                        
                                    )
                                
                                RoundedRectangle(cornerRadius: 97)
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
                                    .overlay(
                                        ZStack{
                                            DatePicker("label", selection: $fromDate, displayedComponents: [.date])
                                                           .datePickerStyle(CompactDatePickerStyle())
                                                           .labelsHidden()
                                           
                                                HStack{
                                                    Text("To Date")
                                                        .font(Font.custom("poppins", size: 15))
                                                        .foregroundColor(Color("000000").opacity(0.5))
                                                        .fontWeight(.regular)
                                                       
                                                    Spacer()
                                                   

                                                }.userInteractionDisabled()
                                                .padding(.horizontal,30)
                                                .padding(.top)
                                            
                                        }
                                        
                                    )
                            }
                          
                        }
                       
                        Divider()
                            .padding(.vertical)
                        
                        VStack{
                            Text("Select Check-in & Check-out times")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 14))
                                .fontWeight(.regular)
                                .padding(.horizontal)
                            
                            VStack{
                                RoundedRectangle(cornerRadius: 97)
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
                                    .overlay(
                                        ZStack{
                                            DatePicker("label", selection: $fromDate, displayedComponents: [.hourAndMinute])
                                                           .datePickerStyle(CompactDatePickerStyle())
                                                           .labelsHidden()
                                           
                                                HStack{
                                                    Text("From Date")
                                                        .font(Font.custom("poppins", size: 15))
                                                        .foregroundColor(Color("000000").opacity(0.5))
                                                        .fontWeight(.regular)
                                                       
                                                    Spacer()
                                                   

                                                }.userInteractionDisabled()
                                                .padding(.horizontal,30)
                                            
                                        }
                                        
                                    )
                                
                                RoundedRectangle(cornerRadius: 97)
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
                                    .overlay(
                                        ZStack{
                                            DatePicker("label", selection: $fromDate, displayedComponents: [.hourAndMinute])
                                                           .datePickerStyle(CompactDatePickerStyle())
                                                           .labelsHidden()
                                           
                                                HStack{
                                                    Text("To Date")
                                                        .font(Font.custom("poppins", size: 15))
                                                        .foregroundColor(Color("000000").opacity(0.5))
                                                        .fontWeight(.regular)
                                                       
                                                    Spacer()
                                                   

                                                }.userInteractionDisabled()
                                                .padding(.horizontal,30)
                                                .padding(.top)
                                            
                                        }
                                        
                                    )
                            }
                        }
                        
                        LoginButton(title: "Next", callback: {
                            viewRouter.currentPage = "BookingSettingsScreen"
                        })
                    }
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct PriceDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PriceDetailScreen()
    }
}
