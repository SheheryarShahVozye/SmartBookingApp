//
//  BasicInformation.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct BasicInformation: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
    
    var types: [String] = ["Chalets","Resorts","Stadium","Apartment","Lounges","Camps",
                           "Wedding Halls","Hotel","Farms"]
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Basic Information")
                ScrollView{
                    VStack{
                        VStack{
                            HStack{
                                Text("Service Type")
                                    .foregroundColor(Color("000000").opacity(0.8))
                                    .font(Font.custom("poppins", size: 16))
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }.padding(.horizontal)
                            
                            HStack{
                                Text("Please select the service type from the list")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 12))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }.padding(.horizontal)
                                .padding(.top,2)
                        }.padding(.vertical)
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(0 ..< types.count, id: \.self) { item in
                                BasicinfoCard(text: types[item], callback: {
                                    
                                })
                            }
                        }
                        
                       
                    }
                   
                }
                Spacer()
                
                LoginButton(title: "Next", callback: {
                    
                })
                    .padding(.bottom)
                BottomNavigation()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct BasicInformation_Previews: PreviewProvider {
    static var previews: some View {
        BasicInformation()
    }
}
