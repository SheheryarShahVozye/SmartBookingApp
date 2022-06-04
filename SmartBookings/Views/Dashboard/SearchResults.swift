//
//  SearchResults.swift
//  SmartBookings
//
//  Created by Sheheryar on 24/05/2022.
//

import SwiftUI

struct SearchResults: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
                TopNavigationWithFilter(titleText: "Search Results")
                ZStack{
                    ScrollView(showsIndicators: false){
                        HStack{
                            Text("Showing 60 results")
                                .foregroundColor(Color("000000").opacity(0.6))
                                .font(Font.custom("poppins", size: 14))
                                .fontWeight(.regular)
                            
                            Spacer()
                        }.padding(.horizontal,30)
                        
                        ForEach(0 ..< 8,id:\.self) { _ in
                            SearchResultCard()
                                .onTapGesture {
                                    viewRouter.currentPage = "SearchedDetail"
                                    
                                }
                        }
                    }
                    
                    VStack{
                        Spacer()
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 160, height: 40, alignment: .center)
                            .foregroundColor(Color("FEBB12"))
                            .overlay(
                                HStack{
                                    Image("Group 3809")
                                        .resizable()
                                        .frame(width: 25, height: 26, alignment: .center)
                                    
                                    Text("View on Map")
                                        .foregroundColor(Color("White"))
                                        .font(Font.custom("poppins", size: 14))
                                        .fontWeight(.regular)
                                }
                            ).padding()
                    }
                }
                
                BottomNavigation()
            }
            
           
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct SearchResults_Previews: PreviewProvider {
    static var previews: some View {
        SearchResults()
    }
}
