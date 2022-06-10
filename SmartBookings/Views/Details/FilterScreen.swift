//
//  FilterScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 10/06/2022.
//

import SwiftUI

struct FilterScreen: View {
    @State var sliderPosition: ClosedRange<Float> = 3...8
    @State var date: Date = Date()
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Filters")
                ScrollView{
                    VStack{
                        
                       
                        Group {
                            HStack{
                                Text("Location Filters")
                                    .foregroundColor(Color("000000").opacity(0.8))
                                    .font(Font.custom("poppins", size: 16))
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                
                                Spacer()
                            }.padding(.horizontal,30)
                           
                           
                           
                            VStack{
                                Group{
                                    FilterDropDown(caption: "Destination", textNumber: .constant(""), callback: {
                                        
                                    })
                                    
                                    FilterDropDown(caption: "District", textNumber: .constant(""), callback: {
                                        
                                    })
                                    
                                    FilterDropDown(caption: "Direction", textNumber: .constant(""), callback: {
                                        
                                    })
                                }.padding(.vertical,5)
                                
                                
                                HStack{
                                    Text("Other Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                
                                VStack{
                                    Group {
                                        HStack{
                                            Text("Available Only")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        HStack{
                                            Text("Offers Only")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                    }.padding(.horizontal,50)
                                        .padding(.vertical,5)
                                    
                                    ProfileTextfield(placeHolder: "Search by property name", textValue: .constant(""))
                                    
                                    ProfileTextfield(placeHolder: "Search by property name", textValue: .constant(""))
                                   
                                }
                                
                                HStack{
                                    Text("Vacation Rental Types")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                VStack{
                                    Group {
                                        ForEach(0 ..< 5,id:\.self) { _ in
                                            HStack{
                                                Circle()
                                                    .foregroundColor(Color("White"))
                                                    .frame(width: 26, height: 26, alignment: .center)
                                                    .shadow(radius: 1)
                                                
                                                Text("Room")
                                                    .foregroundColor(Color("000000").opacity(0.8))
                                                    .font(Font.custom("poppins", size: 12))
                                                    .fontWeight(.regular)
                                                    .multilineTextAlignment(.center)
                                                
                                                Spacer()
                                            }
                                        }
                                       
                                        /*
                                        HStack{
                                            Text("House")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        HStack{
                                            Text("Farm")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                        HStack{
                                            Text("Resort")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                        HStack{
                                            Text("Chalet")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                        HStack{
                                            Text("Istraha")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                        HStack{
                                            Text("Apartment")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                        HStack{
                                            Text("Camp")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                        
                                        */
                                    }
                                    .padding(.horizontal,30)
                                        .padding(.vertical,10)
                                   
                                }
                                
                                VStack{
                                    HStack{
                                        Text("Gathern Choices Filters")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 16))
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }.padding(.horizontal,30)
                                        .padding(.vertical,10)
                                    
                                    ForEach(0 ..< 5,id:\.self) { _ in
                                        VStack{
                                            HStack{
                                                Text("Unique")
                                                    .foregroundColor(Color("000000").opacity(0.8))
                                                    .font(Font.custom("poppins", size: 12))
                                                    .fontWeight(.regular)
                                                    .multilineTextAlignment(.center)
                                                
                                                Spacer()
                                            }.padding(.horizontal,50)
                                                .padding(.top,10)
                                            
                                            HStack{
                                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquot dolor a vulputate dapibus, sem velit tempus mi, sit amet blandit lorem elit vel ligula.")
                                                    .foregroundColor(Color("000000").opacity(0.8))
                                                    .font(Font.custom("poppins", size: 12))
                                                    .fontWeight(.regular)
                                                    .multilineTextAlignment(.leading)
                                                
                                                Spacer()
                                            }.padding(.horizontal,50)
                                                .padding(.top,5)
                                                
                                        }
                                    }
                                    
                                }
                                
                               
                                
                               
                                
                            }
                            
                            
                            
                            VStack{
                                HStack{
                                    Text("Price Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical)
                                
                                VStack{
                                    
                                   
                                    
                                    HStack{
                                        Spacer()
                                        Text("SAR 350")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 11))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                    }
                                    RangedSliderView(value: $sliderPosition, bounds: 1...10)
                                       
                                } .frame(width: UIScreen.main.bounds.width - 50)
                            }
                            .padding(.top)
                            
                            Divider()
                                .padding(.vertical)
                            
                            VStack{
                                HStack{
                                    Text("Space Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical)
                                
                                VStack{
                                    

                                    
                                    
                                    HStack{
                                        Text("500 sq2")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 11))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        Spacer()
                                        Text("1000 sq2")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 11))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                    }
                                    RangedSliderView(value: $sliderPosition, bounds: 1...10)
                                       
                                } .frame(width: UIScreen.main.bounds.width - 50)
                            }
                            .padding(.top)
                            
                            Divider()
                                .padding(.vertical)
                        }
                       
                        Group {
                            VStack{
                                HStack{
                                    Text("Review Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                
                               
                                
                                Group {
                                    
                                    ForEach(0 ..< 5,id:\.self) { _ in
                                        HStack{
                                            Circle()
                                                .foregroundColor(Color("White"))
                                                .frame(width: 26, height: 26, alignment: .center)
                                                .shadow(radius: 1)
                                            
                                            Text("All")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                    }
                                    /*
                                    HStack{
                                        Text("All")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }
                                    HStack{
                                        Text("+5 Excellent")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }
                                    HStack{
                                        Text("+4 Very Good")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        Text("+3 Good")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        Text("Chalet")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        Text("+2 Fair")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                    }
                                    */
                                    
                                }
                                .padding(.horizontal,30)
                                    .padding(.vertical,10)
                            }
                            
                            Divider()
                                .padding(.vertical)
                           
                            VStack{
                                HStack{
                                    Text("Bedroom Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                Group {
                                    
                                    
                                    HStack{
                                        Text("Rooms")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Single Beds")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Double Bed")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                   
                                    
                                }
                                .padding(.horizontal,50)
                                    .padding(.vertical,10)
                            }
                            
                            Divider()
                                .padding(.vertical)
                            
                            VStack{
                                HStack{
                                    Text("Bathroom Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                Group {
                                    HStack{
                                        Text("Rooms")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Tissues")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Soap")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Bathtub")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Shampoo")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Slippers")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Bathrobe")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Shower")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                   
                                    
                                }
                                .padding(.horizontal,50)
                                    .padding(.vertical,10)
                            }
                            
                            Divider()
                                .padding(.vertical)
                        }
                        
                        Group {
                            VStack{
                                HStack{
                                    Text("Capacity Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                Group {
                                    HStack{
                                        Text("Guests")
                                            .foregroundColor(Color("000000").opacity(0.8))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        
                                        Spacer()
                                        VStack{
                                            Image("negativeIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        Text("2")
                                            .foregroundColor(Color("000000"))
                                            .font(Font.custom("poppins", size: 12))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.center)
                                        VStack{
                                            Image("plusIcon")
                                                .scaledToFit()
                                        }.frame(width: 26, height: 25, alignment: .center)
                                        
                                    }
                                    
                                }
                                .padding(.horizontal,50)
                                    .padding(.vertical,10)
                            }
                            VStack{
                                HStack{
                                    Text("Check-in & Check-out Filter")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                RoundedRectangle(cornerRadius: 97)
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
                                    .overlay(
                                        ZStack{
                                            DatePicker("label", selection: $date, displayedComponents: [.hourAndMinute])
                                                           .datePickerStyle(CompactDatePickerStyle())
                                                           .labelsHidden()
                                           
                                                HStack{
                                                    Text("Check In Time")
                                                        .font(Font.custom("poppins", size: 15))
                                                        .foregroundColor(Color("000000").opacity(0.5))
                                                        .fontWeight(.regular)
                                                       
                                                    Spacer()
                                                   

                                                }.userInteractionDisabled()
                                                .padding(.horizontal,30)
                                                .padding(.top,30)
                                            
                                        }
                                        
                                    )
                                
                                RoundedRectangle(cornerRadius: 97)
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
                                    .foregroundColor(Color("White"))
                                    .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 2)
                                    .overlay(
                                        ZStack{
                                            DatePicker("label", selection: $date, displayedComponents: [.hourAndMinute])
                                                           .datePickerStyle(CompactDatePickerStyle())
                                                           .labelsHidden()
                                           
                                                HStack{
                                                    Text("Check Out Time")
                                                        .font(Font.custom("poppins", size: 15))
                                                        .foregroundColor(Color("000000").opacity(0.5))
                                                        .fontWeight(.regular)
                                                       
                                                    Spacer()
                                                   

                                                }.userInteractionDisabled()
                                                .padding(.horizontal,30)
                                                .padding(.top,30)
                                            
                                        }
                                        
                                    )
                            }
                            VStack{
                                HStack{
                                    Text("Pool Type Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                Group {
                                    ForEach(0 ..< 5,id:\.self) { _ in
                                        HStack{
                                            Circle()
                                                .foregroundColor(Color("White"))
                                                .frame(width: 26, height: 26, alignment: .center)
                                                .shadow(radius: 1)
                                            
                                            Text("Guest")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                    }
                                   
                                    
                                }
                                .padding(.horizontal,30)
                                    .padding(.vertical,10)
                            }
                            VStack{
                                HStack{
                                    Text("Facilities Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                Group {
                                    ForEach(0 ..< 5,id:\.self) { _ in
                                        HStack{
                                            Circle()
                                                .foregroundColor(Color("White"))
                                                .frame(width: 26, height: 26, alignment: .center)
                                                .shadow(radius: 1)
                                            
                                            Text("All")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                    }
                                   
                                    
                                }
                                .padding(.horizontal,30)
                                    .padding(.vertical,10)
                            }
                            
                            VStack{
                                HStack{
                                    Text("Categories Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                Group {
                                    ForEach(0 ..< 5,id:\.self) { _ in
                                        HStack{
                                            Circle()
                                                .foregroundColor(Color("White"))
                                                .frame(width: 26, height: 26, alignment: .center)
                                                .shadow(radius: 1)
                                            
                                            Text("All")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                    }
                                   
                                    
                                }
                                .padding(.horizontal,30)
                                    .padding(.vertical,10)
                            }
                            
                            VStack{
                                HStack{
                                    Text("Kitchen Facilities Filters")
                                        .foregroundColor(Color("000000").opacity(0.8))
                                        .font(Font.custom("poppins", size: 16))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                    Spacer()
                                }.padding(.horizontal,30)
                                    .padding(.vertical,10)
                                
                                Group {
                                    ForEach(0 ..< 5,id:\.self) { _ in
                                        HStack{
                                            Circle()
                                                .foregroundColor(Color("White"))
                                                .frame(width: 26, height: 26, alignment: .center)
                                                .shadow(radius: 1)
                                            
                                            Text("All")
                                                .foregroundColor(Color("000000").opacity(0.8))
                                                .font(Font.custom("poppins", size: 12))
                                                .fontWeight(.regular)
                                                .multilineTextAlignment(.center)
                                            
                                            Spacer()
                                        }
                                    }
                                   
                                    
                                }
                                .padding(.horizontal,30)
                                    .padding(.vertical,10)
                            }
                        }
                        
                        LoginButton(title: "Show Results", callback: {
                            
                        }).padding(.vertical,30)
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Color("F2F5F9"))
            .ignoresSafeArea(.container, edges: .top)
    }
}

struct FilterScreen_Previews: PreviewProvider {
    static var previews: some View {
        FilterScreen()
    }
}


struct RangedSliderView: View {
    let currentValue: Binding<ClosedRange<Float>>
    let sliderBounds: ClosedRange<Int>
    
    public init(value: Binding<ClosedRange<Float>>, bounds: ClosedRange<Int>) {
        self.currentValue = value
        self.sliderBounds = bounds
    }
    
    var body: some View {
        GeometryReader { geomentry in
            sliderView(sliderSize: geomentry.size)
        }
    }
    
        
    @ViewBuilder private func sliderView(sliderSize: CGSize) -> some View {
        let sliderViewYCenter = sliderSize.height / 2
        ZStack {
            RoundedRectangle(cornerRadius: 2)
                .fill(Color("White"))
                .frame(height: 4)
           
            ZStack {
                let sliderBoundDifference = sliderBounds.count
                let stepWidthInPixel = CGFloat(sliderSize.width) / CGFloat(sliderBoundDifference)
                
                // Calculate Left Thumb initial position
                let leftThumbLocation: CGFloat = currentValue.wrappedValue.lowerBound == Float(sliderBounds.lowerBound)
                    ? 0
                    : CGFloat(currentValue.wrappedValue.lowerBound - Float(sliderBounds.lowerBound)) * stepWidthInPixel
                
                // Calculate right thumb initial position
                let rightThumbLocation = CGFloat(currentValue.wrappedValue.upperBound) * stepWidthInPixel
                
                // Path between both handles
                lineBetweenThumbs(from: .init(x: leftThumbLocation, y: sliderViewYCenter), to: .init(x: rightThumbLocation, y: sliderViewYCenter))
                
                // Left Thumb Handle
                let leftThumbPoint = CGPoint(x: leftThumbLocation, y: sliderViewYCenter)
                thumbView(position: leftThumbPoint, value: Float(currentValue.wrappedValue.lowerBound))
                    .highPriorityGesture(DragGesture().onChanged { dragValue in
                        
                        let dragLocation = dragValue.location
                        let xThumbOffset = min(max(0, dragLocation.x), sliderSize.width)
                        
                        let newValue = Float(sliderBounds.lowerBound) + Float(xThumbOffset / stepWidthInPixel)
                        
                        // Stop the range thumbs from colliding each other
                        if newValue < currentValue.wrappedValue.upperBound {
                            currentValue.wrappedValue = newValue...currentValue.wrappedValue.upperBound
                        }
                    })
                
                // Right Thumb Handle
                thumbView(position: CGPoint(x: rightThumbLocation, y: sliderViewYCenter), value: currentValue.wrappedValue.upperBound)
                    .highPriorityGesture(DragGesture().onChanged { dragValue in
                        let dragLocation = dragValue.location
                        let xThumbOffset = min(max(CGFloat(leftThumbLocation), dragLocation.x), sliderSize.width)
                        
                        var newValue = Float(xThumbOffset / stepWidthInPixel) // convert back the value bound
                        newValue = min(newValue, Float(sliderBounds.upperBound))
                        
                        // Stop the range thumbs from colliding each other
                        if newValue > currentValue.wrappedValue.lowerBound {
                            currentValue.wrappedValue = currentValue.wrappedValue.lowerBound...newValue
                        }
                    })
            }
        }
    }
    
    @ViewBuilder func lineBetweenThumbs(from: CGPoint, to: CGPoint) -> some View {
        Path { path in
            path.move(to: from)
            path.addLine(to: to)
        }.stroke(Color("FEBB12"), lineWidth: 4)
    }
    
    @ViewBuilder func thumbView(position: CGPoint, value: Float) -> some View {
        ZStack {
            Circle()
                .frame(width: 24, height: 24)
                .foregroundColor(Color("FEBB12"))
                .shadow(color: Color.black.opacity(0.16), radius: 8, x: 0, y: 2)
                .contentShape(Rectangle())
        }
        .position(x: position.x, y: position.y)
    }
}
