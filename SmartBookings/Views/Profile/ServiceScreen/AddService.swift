//
//  AddService.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct AddService: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Add Service")
                
                ScrollView{
                    VStack{
                        
                        HStack{
                            Text("Please add details for new service")
                                .font(Font.custom("poppins", size: 16))
                                .foregroundColor(Color("000000").opacity(0.8))
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }.frame(width: UIScreen.main.bounds.width - 50)
                        
                        
                        AddServiceCard(
                            imageName: "informationImage",
                            title: "Basic Information",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac odio at urna curs us lacinia.")
                            .padding(.top)
                        
                        AddServiceCard(
                            imageName: "serviceDescription",
                            title: "Service Description",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac odio at urna curs us lacinia.")
                            .padding(.top)
                        
                        AddServiceCard(
                            imageName: "priceTag",
                            title: "Price Details",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac odio at urna curs us lacinia.")
                            .padding(.top)
                    }
                    .padding()
                }
                BottomNavigation()
                
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct AddService_Previews: PreviewProvider {
    static var previews: some View {
        AddService()
    }
}
