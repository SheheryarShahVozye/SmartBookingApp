//
//  Profile.swift
//  SmartBookings
//
//  Created by Sheheryar on 03/06/2022.
//

import SwiftUI

struct Profile: View {
    var textColor: String = "000000"
    var textColorYellow: String = "FEBB12"
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "More")
                ScrollView{
                    VStack{
                        Group {
                            HStack{
                                Text("Welcome")
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                
                                Spacer()
                            }
                            HStack{
                                Text("Lorem Ipsum")
                                    .font(Font.custom("poppins", size: 22))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(textColor))
                                
                                Spacer()
                            }
                        }
                       
                        VStack{
                            HStack{
                                Text("My Account")
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColorYellow))
                                
                                Spacer()
                            }
                            HStack{
                                Group{
                                    Image("bellicon")
                                        .scaledToFit()
                                }.frame(width: 30, height: 22, alignment: .center)
                                
                                Text("My Profile")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                            }.padding(.top,5)
                            HStack{
                                Group{
                                    Image("messageProfile")
                                        .scaledToFit()
                                }.frame(width: 30, height: 22, alignment: .center)
                                
                                Text("Messages")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                            }.padding(.top,5)
                            HStack{
                                Group{
                                    Image("balanceProfile")
                                        .scaledToFit()
                                }.frame(width: 30, height: 22, alignment: .center)
                                
                                Text("Balance")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                                Text("SAR 24.99")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                   
                            }
                            .padding(.top,5)
                            HStack{
                                Group{
                                    Image("vendorIcon")
                                        .scaledToFit()
                                }.frame(width: 30, height: 22, alignment: .center)
                                
                                Text("Become Vendor")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColorYellow))
                                    .padding(.leading,5)
                                
                                Spacer()
                               
                                   
                            }.padding(.top,5)
                        }.padding(.top,10)
                       
                        Divider()
                            .padding(.vertical,10)
                        
                        VStack{
                            HStack{
                                Text("Settings")
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColorYellow))
                                
                                Spacer()
                            }
                            
                            HStack{
                                Group{
                                    Image("language")
                                        .scaledToFit()
                                }.frame(width: 30, height: 30, alignment: .center)
                                
                                Text("Language")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                                Text("English")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                            }.padding(.top,5)
                            
                            HStack{
                                Group{
                                    Image("priceticket")
                                        .scaledToFit()
                                }.frame(width: 30, height: 30, alignment: .center)
                                
                                Text("Price Display")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                                Text("SAR")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                            }.padding(.top,5)
                            
                            HStack{
                                Group{
                                    Image("Distance")
                                        .scaledToFit()
                                }.frame(width: 30, height: 30, alignment: .center)
                                
                                Text("Price Display")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                                Text("KM")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                            }.padding(.top,5)
                            
                            HStack{
                                Group{
                                    Image("bellnotify")
                                        .scaledToFit()
                                }.frame(width: 30, height: 30, alignment: .center)
                                
                                Text("Notifications")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()

                            }.padding(.top,5)

                        }
                        
                        Divider()
                            .padding(.vertical,10)
                        
                        VStack{
                            HStack{
                                Text("Information")
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColorYellow))
                                
                                Spacer()
                            }
                            
                            HStack{
                                Group{
                                    Image("privacyPolic")
                                        .scaledToFit()
                                }.frame(width: 30, height: 30, alignment: .center)
                                
                                Text("Privacy Policy")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                               
                            }.padding(.top,5)
                            
                            HStack{
                                Group{
                                    Image("FAQ")
                                        .scaledToFit()
                                }.frame(width: 30, height: 30, alignment: .center)
                                
                                Text("FAQ's")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                               
                            }.padding(.top,5)
                            
                            HStack{
                                Group{
                                    Image("TOU")
                                        .scaledToFit()
                                }.frame(width: 30, height: 30, alignment: .center)
                                
                                Text("Terms of Use")
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(textColor).opacity(0.6))
                                    .padding(.leading,5)
                                
                                Spacer()
                               
                            }.padding(.top,5)
                        }
                        
                        Divider()
                            .padding(.vertical,10)
                        
                        HStack{
                            Group{
                                Image("LOGOUT")
                                    .scaledToFit()
                            }.frame(width: 30, height: 30, alignment: .center)
                            
                            Text("Logout")
                                .font(Font.custom("poppins", size: 12))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor).opacity(0.6))
                                .padding(.leading,5)
                            
                            Spacer()
                           
                        }.padding(.top,5)
                        
                    }.frame(width: UIScreen.main.bounds.width - 40)
                }
                BottomNavigation()
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
