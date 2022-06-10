//
//  ServiceLocation.swift
//  SmartBookings
//
//  Created by Sheheryar on 05/06/2022.
//

import SwiftUI

struct ServiceLocation: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Service Description")
                VStack{
                    HStack{
                        Text("Address & Location")
                            .foregroundColor(Color("000000").opacity(0.8))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,10)
                    HStack{
                        Text("Please add the address & Location of service")
                            .foregroundColor(Color("000000").opacity(0.6))
                            .font(Font.custom("poppins", size: 12))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,10)
                        .padding(.top,5)
                    ScrollView{
                        VStack{
                            Image("mapImage")
                                .scaledToFit()
                        }.frame(width: UIScreen.main.bounds.width, height: 330, alignment: .center)
                        VStack{
                            Group{
                                ProfileTextfield(placeHolder: "Address", textValue: .constant(""))
                                ProfileTextfield(placeHolder: "Property Number", textValue: .constant(""))
                                ProfileTextfield(placeHolder: "City", textValue: .constant(""))
                                ProfileTextfield(placeHolder: "Area", textValue: .constant(""))
                                ProfileTextfield(placeHolder: "Landmark", textValue: .constant(""))
                            }.padding(.top,10)
                            
                        }
                        
                        LoginButton(title: "Done", callback: {
                            viewRouter.currentPage = "AddService"
                        })
                    }
                    
                    BottomNavigation()
                }
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct ServiceLocation_Previews: PreviewProvider {
    static var previews: some View {
        ServiceLocation()
    }
}
