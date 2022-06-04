//
//  Dashboard.swift
//  SmartBookings
//
//  Created by Sheheryar on 19/05/2022.
//

import SwiftUI

struct Dashboard: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var textColor: String = "000000"
    var buttonbg: String = "FEBB12"
    var Categories: [String] = ["Hotels","Appartments","Resorts","Farms","Lounges","Stadium","Chalets","Camps","Wedding Hall"]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                HStack{
                    Image("Group 8234")
                        .resizable()
                        .frame(width: 190, height: 47, alignment: .leading)
                    
                    Spacer()
                    Image("Group 6806")
                        .resizable()
                        .frame(width: 27, height: 33, alignment: .center)
                        .padding(.top)
                        .onTapGesture {
                            viewRouter.currentPage = "NotificationScreen"
                        }
                
                }.padding(.horizontal)
                    .padding(.vertical,30)
            ScrollView{
                VStack{
                    HStack{
                        Text("Find the")
                            .font(Font.custom("poppins", size: 23))
                            .foregroundColor(Color(textColor))
                            .bold()
                        Spacer()
                    }
                    HStack{
                        Text("Best option for you")
                            .font(Font.custom("poppins", size: 23))
                            .foregroundColor(Color(textColor))
                            .bold()
                        Spacer()
                    }
                }.padding(.horizontal,30)
                    .padding(.vertical)
                
                SearchBar(searchQuery: .constant(""),caption: "Search Hotel, Resorts Farms")
                //carousel
                HStack{
                    Image("Group 7913")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 50, height: 142, alignment: .center)
                        .cornerRadius(20)
                        .scaledToFit()
                    
                }.padding(.vertical,20)
               
                
                HStack{
                    Text("Choose Category")
                        .font(Font.custom("poppins", size: 13))
                        .foregroundColor(Color(textColor).opacity(0.8))
                        .fontWeight(.regular)
                    Spacer()
                }.padding(.horizontal,30)
                
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(0 ..< Categories.count, id: \.self) { item in
                            DashboardCards(title:Categories[item])
                                .onTapGesture{
                                    viewRouter.currentPage = "SearchArea"

                                }
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack{
                        ForEach(0 ..< 3,id:\.self) { _ in
                            RecomHotelsCards()
                        }
                    }.padding()
                    
                }.padding(.top)
                
                BottomNavigation()
            }
        } .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
