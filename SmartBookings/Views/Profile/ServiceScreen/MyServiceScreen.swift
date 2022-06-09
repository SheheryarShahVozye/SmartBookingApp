//
//  MyServiceScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 08/06/2022.
//

import SwiftUI

struct MyServiceScreen: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "My Services")
                HStack{
                    Text("Your added services")
                        .foregroundColor(Color("000000").opacity(0.8))
                        .font(Font.custom("poppins", size: 16))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                HStack{
                    Text("You can View, Edit and delete your services")
                        .foregroundColor(Color("000000").opacity(0.6))
                        .font(Font.custom("poppins", size: 12))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding(.horizontal,10)
                    .padding(.top,5)
                ScrollView{
                    VStack{
                        ForEach(0 ..< 6,id:\.self) { _ in
                            MyServiceCard()
                        }
                    }
                }
                BottomNavigation()
            }
            
            ZStack{
                
                VStack {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("000000"))
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: UIScreen.main.bounds.width - 50, height: 330, alignment: .center)
                    .foregroundColor(Color("White"))
                    .shadow(color: Color("000000").opacity(0.2), radius: 2, x: 0, y: 1)
                    .overlay(
                        VStack{
                            VStack{
                                Image("informationIcon")
                                    .scaledToFit()
                            }
                            .frame(width: 108, height: 110, alignment: .center)
                            .padding(.top)
                            
                            Text("Delete?")
                                .foregroundColor(Color("000000"))
                                .font(Font.custom("poppins", size: 20))
                                .fontWeight(.bold)
                            
                            Text("Are you sure you want to delete?")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 12))
                                .fontWeight(.regular)
                                .padding(.top,1)
                            
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 70)
                                        .foregroundColor(Color("White"))
                                    
                                    RoundedRectangle(cornerRadius: 70)
                                        .stroke(Color("707070"),lineWidth: 1)
                                        .overlay(
                                                Text("No")
                                                    .foregroundColor(Color("000000").opacity(0.4))
                                                    .font(Font.custom("poppins", size: 18))
                                                    .fontWeight(.regular)
                                        )
                                    
                                }.frame(width: 160, height: 52, alignment: .center)
                                
                                ZStack{
                                   
                                    
                                    RoundedRectangle(cornerRadius: 70)
                                        .foregroundColor(Color("FEBB12"))
                                        .overlay(
                                                Text("Yes")
                                                    .foregroundColor(Color("000000"))
                                                    .font(Font.custom("poppins", size: 18))
                                                    .fontWeight(.regular)
                                        )
                                    
                                }.frame(width: 160, height: 52, alignment: .center)
                            }.padding(.vertical)
                            
                        }
                    )

            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct MyServiceScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyServiceScreen()
    }
}
