//
//  BookingDetails.swift
//  SmartBookings
//
//  Created by Sheheryar on 11/06/2022.
//

import SwiftUI

struct BookingDetails: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Booking")
                HStack{
                    Text("Booking Details")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,20)
                ScrollView{
                    VStack{
                        SearchResultCard()
                        VStack{
                            HStack{
                                Text("Check-in Date")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text("25/04/2022")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                            }.padding(.horizontal,20)
                                
                            HStack{
                                Text("Check-out Date")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text("27/04/2022")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                            }.padding(.horizontal,20)
                                .padding(.top,5)
                            
                            HStack{
                                Text("Nights")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text("2")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                            }.padding(.horizontal,20)
                                .padding(.top,5)

                            
                            HStack{
                                Text("Total Price")
                                    .foregroundColor(Color("000000"))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text("SAR 120")
                                    .foregroundColor(Color("FEBB12"))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }.padding(.horizontal,20)
                                .padding(.top,5)
                            
                            

                            
                        }.padding(.top)
                        
                        Divider()
                            .padding(.vertical)
                        
                        VStack{
                            Group {
                                HStack{
                                    Text("Payment Options")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }
                                
                                HStack{
                                    Circle()
                                        .foregroundColor(Color("White"))
                                        .frame(width: 26, height: 26, alignment: .center)
                                        .shadow(radius: 1)
                                    
                                    Text("Full Payment (SAR 120)")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 14))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                                
                                HStack{
                                    Circle()
                                        .foregroundColor(Color("White"))
                                        .frame(width: 26, height: 26, alignment: .center)
                                        .shadow(radius: 1)
                                    
                                    Text("Partial Payment (SAR 60)")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 14))
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                                
                                
                            }.padding(.horizontal,20)
                           
                        }
                        
                        Divider()
                            .padding(.vertical)
                        
                        VStack{
                            Group {
                                HStack{
                                    Text("Payment Method")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }
                                
                                HStack{
                                    VStack {
                                        Circle()
                                            .foregroundColor(Color("White"))
                                            .frame(width: 26, height: 26, alignment: .center)
                                        .shadow(radius: 1)
                                        Spacer()
                                    }
                                    VStack{
                                        HStack {
                                            VStack{
                                                Image("master")
                                                 
                                            }.frame(width: 56, height: 35, alignment: .leading)
                                           
                                            VStack{
                                                Image("visa")
                                                 
                                            }.frame(width: 64, height: 21, alignment: .leading)
                                           
                                            
                                            Spacer()
                                        }
                                        
                                        HStack {
                                            Text("You can pay with Visa or MasterCard")
                                                .foregroundColor(Color("000000").opacity(0.7))
                                                .font(Font.custom("poppins", size: 11))
                                                .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                    }.padding(.leading)
                                    
                                   
                                    
                                    Spacer()
                                }
                                .padding(.top)
                                
                                HStack{
                                    VStack {
                                        Circle()
                                            .foregroundColor(Color("White"))
                                            .frame(width: 26, height: 26, alignment: .center)
                                        .shadow(radius: 1)
                                        Spacer()
                                    }
                                    VStack{
                                        HStack {
                                            VStack{
                                                Image("applepay")
                                                 
                                            }.frame(width: 65, height: 27, alignment: .leading)
                                           
                                           
                                           
                                            
                                            Spacer()
                                        }
                                        
                                        HStack {
                                            Text("You can pay with Visa or MasterCard")
                                                .foregroundColor(Color("000000").opacity(0.7))
                                                .font(Font.custom("poppins", size: 11))
                                                .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                    }.padding(.leading)
                                    
                                   
                                    
                                    Spacer()
                                }
                                .padding(.top)
                                
                                HStack{
                                    VStack {
                                        Circle()
                                            .foregroundColor(Color("White"))
                                            .frame(width: 26, height: 26, alignment: .center)
                                        .shadow(radius: 1)
                                        Spacer()
                                    }
                                    VStack{
                                        HStack {
                                            VStack{
                                                Image("tamara")
                                                    .scaledToFit()
                                                 
                                            }.frame(width: 71, height: 23, alignment: .leading)
                                           
                                           
                                           
                                            
                                            Spacer()
                                        }
                                        
                                        HStack {
                                            Text("You can pay with Visa or MasterCard")
                                                .foregroundColor(Color("000000").opacity(0.7))
                                                .font(Font.custom("poppins", size: 11))
                                                .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                    }.padding(.leading)
                                    
                                   
                                    
                                    Spacer()
                                }
                                .padding(.top)
                                
                                
                            }.padding(.horizontal,20)
                           
                        }
                        
                        Group {
                            Divider()
                                .padding(.vertical)
                            
                            VStack{
                                Group {
                                    
                                    HStack{
                                        Text("Property Terms & Conditions")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 16))
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        VStack{
                                            VStack{
                                                ZStack{
                                                    Circle()
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        .foregroundColor(Color("000000"))
                                                    Circle()
                                                        .stroke(Color("707070"),lineWidth: 2)
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        
                                                }
                                            }
                                           
                                            
                                            Spacer()
                                            
                                        }.padding(.top,5)
                                        
                                        VStack {
                                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquot dolor a vulputate dapibus, sem velit tempus mi, sit amet blandit lorem elit vel ligula.")
                                                .foregroundColor(Color("000000").opacity(0.7))
                                                .font(Font.custom("poppins", size: 11))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.leading)
                                            
                                            Spacer()
                                        }
                                        
                                        Spacer()
                                        
                                    }.frame(height:60)
                                    
                                    HStack{
                                        VStack{
                                            VStack{
                                                ZStack{
                                                    Circle()
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        .foregroundColor(Color("000000"))
                                                    Circle()
                                                        .stroke(Color("707070"),lineWidth: 2)
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        
                                                }
                                            }
                                           
                                            
                                            Spacer()
                                            
                                        }.padding(.top,5)
                                        
                                        VStack {
                                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquot dolor a vulputate dapibus, sem velit tempus mi, sit amet blandit lorem elit vel ligula.")
                                                .foregroundColor(Color("000000").opacity(0.7))
                                                .font(Font.custom("poppins", size: 11))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.leading)
                                            
                                            Spacer()
                                        }
                                        
                                        Spacer()
                                        
                                    }.frame(height:60)
                                    
                                    HStack{
                                        VStack{
                                            VStack{
                                                ZStack{
                                                    Circle()
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        .foregroundColor(Color("000000"))
                                                    Circle()
                                                        .stroke(Color("707070"),lineWidth: 2)
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        
                                                }
                                            }
                                           
                                            
                                            Spacer()
                                            
                                        }.padding(.top,5)
                                        
                                        VStack {
                                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquot dolor a vulputate dapibus, sem velit tempus mi, sit amet blandit lorem elit vel ligula.")
                                                .foregroundColor(Color("000000").opacity(0.7))
                                                .font(Font.custom("poppins", size: 11))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.leading)
                                            
                                            Spacer()
                                        }
                                        
                                        Spacer()
                                        
                                    }.frame(height:60)
                                    
                                }.padding(.horizontal,20)
                                
                            }
                            
                            Divider()
                                .padding(.vertical)
                            
                            VStack{
                                Group {
                                    
                                    HStack{
                                        Text("Cancellation Policy")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 16))
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        VStack{
                                            VStack{
                                                ZStack{
                                                    Circle()
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        .foregroundColor(Color("000000"))
                                                    Circle()
                                                        .stroke(Color("707070"),lineWidth: 2)
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        
                                                }
                                            }
                                           
                                            
                                            Spacer()
                                            
                                        }.padding(.top,5)
                                        
                                        VStack {
                                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquot dolor a vulputate dapibus, sem velit tempus mi, sit amet blandit lorem elit vel ligula.")
                                                .foregroundColor(Color("000000").opacity(0.7))
                                                .font(Font.custom("poppins", size: 11))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.leading)
                                            
                                            Spacer()
                                        }
                                        
                                        Spacer()
                                        
                                    }.frame(height:60)
                                    
                                    HStack{
                                        VStack{
                                            VStack{
                                                ZStack{
                                                    Circle()
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        .foregroundColor(Color("000000"))
                                                    Circle()
                                                        .stroke(Color("707070"),lineWidth: 2)
                                                        .frame(width: 8, height: 8, alignment: .leading)
                                                        
                                                }
                                            }
                                           
                                            
                                            Spacer()
                                            
                                        }.padding(.top,5)
                                        
                                        VStack {
                                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquot dolor a vulputate dapibus, sem velit tempus mi, sit amet blandit lorem elit vel ligula.")
                                                .foregroundColor(Color("000000").opacity(0.7))
                                                .font(Font.custom("poppins", size: 11))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.leading)
                                            
                                            Spacer()
                                        }
                                        
                                        Spacer()
                                        
                                    }.frame(height:60)
                                    
                                  
                                    
                                }.padding(.horizontal,20)
                                
                            }
                            
                            LoginButton(title: "Pay (500 SAR)", callback: {
                                
                            })
                        }
                     
                    }
                }
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Color("F2F5F9"))
            .ignoresSafeArea(.container, edges: .top)
    }
}

struct BookingDetails_Previews: PreviewProvider {
    static var previews: some View {
        BookingDetails()
    }
}
