//
//  SafetyScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct SafetyScreen: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var safetyTypes: [String] = ["Carbon Monoxide Alarm","Fire Alarm","Fire Extinguisher","First Aid Kit"]
    @State var imageName: [String] = ["CO2ALARM","FIREALARM","FireExtinguisher","firstAid"]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
    
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText:"Safety")
                VStack{
                    HStack{
                        Text("Safety")
                            .foregroundColor(Color("000000").opacity(0.8))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,10)
                    HStack{
                        Text("Please select the safety types")
                            .foregroundColor(Color("000000").opacity(0.6))
                            .font(Font.custom("poppins", size: 12))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,10)
                        .padding(.top,5)
                }
                ScrollView{
                    VStack{
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(0 ..< safetyTypes.count, id: \.self) { item in
                                SafetyCard(title: safetyTypes[item], imageName: imageName[item])
                                    .onTapGesture{
                                        viewRouter.currentPage = "ServiceDescription"
                                    }
                            }
                        }
                    }.padding(.top)
                }
                BottomNavigation()
            }
            
        } .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct SafetyScreen_Previews: PreviewProvider {
    static var previews: some View {
        SafetyScreen()
    }
}
