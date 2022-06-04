//
//  SearchArea.swift
//  SmartBookings
//
//  Created by Sheheryar on 23/05/2022.
//

import SwiftUI

struct SearchArea: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var textColor: String = "000000"
    @State var types: [Bool] = [true,false,false,false,false,false,false,false,false]
    @State var selectedType : String = ""
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    
    let rows = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Search")
                ScrollView( showsIndicators: false){
                    
                    VStack{
                        HStack{
                            ForEach(0 ..< 5, id: \.self) { item in
                                
                                if types[item] == true {
                                    
                                    Text(AppUtil.searchtypes[item])
                                        .font(Font.custom("poppins", size: 14))
                                        .foregroundColor(Color(textColor))
                                        .fontWeight(.regular)
                                        .padding(.horizontal,10)
                                        .background(
                                            Rectangle()
                                                .fill(Color("FEBB12"))
                                                .frame(height:30)
                                                .cornerRadius(10)
                                            
                                        ).padding(.vertical)
                                        .onTapGesture {
                                            types[item] = false
                                        }
                                } else {
                                    Text(AppUtil.searchtypes[item])
                                        .font(Font.custom("poppins", size: 14))
                                        .foregroundColor(Color(textColor).opacity(0.5))
                                        .fontWeight(.regular)
                                        .padding(.horizontal,7)
                                        .onTapGesture {
                                            markAllFalse(index: item)
                                            types[item] = true
                                            selectedType = AppUtil.searchtypes[item]
                                            
                                        }
                                }
                                
                            }
                        }.frame(width: UIScreen.main.bounds.width - 50)
                        
                        HStack{
                            ForEach(5 ..< AppUtil.searchtypes.count, id: \.self) { item in
                                if types[item] == true {
                                    
                                    Text(AppUtil.searchtypes[item])
                                        .font(Font.custom("poppins", size: 14))
                                        .foregroundColor(Color(textColor))
                                        .fontWeight(.regular)
                                        .padding(.horizontal,10)
                                        .background(
                                            Rectangle()
                                                .fill(Color("FEBB12"))
                                                .frame(height:30)
                                                .cornerRadius(10)
                                            
                                        ).padding(.vertical)
                                        .onTapGesture {
                                            types[item] = false
                                        }
                                } else {
                                    Text(AppUtil.searchtypes[item])
                                        .font(Font.custom("poppins", size: 14))
                                        .foregroundColor(Color(textColor).opacity(0.5))
                                        .fontWeight(.regular)
                                        .padding(.horizontal,7)
                                        .onTapGesture {
                                            markAllFalse(index: item)
                                            types[item] = true
                                            selectedType = AppUtil.searchtypes[item]
                                            
                                        }
                                }
                                
                            }
                        }.frame(width: UIScreen.main.bounds.width - 50)
                    }.padding(.vertical)
                    
                    if selectedType == "Apartment"{
                        VStack{
                            SearchBar(searchQuery: .constant(""),caption: "City, Landmark or Property")
                            HStack{
                                RoundedRectangle(cornerRadius: 80)
                                    .foregroundColor(Color("White"))
                                    .frame(height: 40, alignment: .center)
                                    .overlay(
                                        HStack{
                                            Image("Group 3821")
                                                .resizable()
                                                .frame(width: 15, height: 20, alignment: .center)
                                            Text("Around me")
                                                .font(Font.custom("poppins", size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color(textColor).opacity(0.5))
                                        }.padding(.horizontal)
                                    )
                                Spacer()
                                RoundedRectangle(cornerRadius: 80)
                                    .foregroundColor(Color("White"))
                                    .frame(height: 40, alignment: .center)
                                    .overlay(
                                        HStack{
                                            Image("Group 3820")
                                                .resizable()
                                                .frame(width: 20, height: 20, alignment: .center)
                                            Text("Choose on map")
                                                .font(Font.custom("poppins", size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color(textColor).opacity(0.5))
                                                .lineLimit(1)
                                        }.padding(.horizontal)
                                    )
                            }.frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.vertical,10)
                            VStack{
                                SearchDateControl(searchQuery: .constant(""),caption: "Check-In")
                                    .padding(.bottom)
                                SearchDateControl(searchQuery: .constant(""),caption: "Check-Out")
                                    .padding(.bottom)
                                SearchFields(searchQuery: .constant(""),caption: "Rooms",imageName: "Group 6778")
                                    .padding(.bottom)
                               
                            }
                            
                            
                            HStack{
                                RoundedRectangle(cornerRadius: 80)
                                    .foregroundColor(Color("White"))
                                    .frame(height: 50, alignment: .center)
                                    .overlay(
                                        HStack{
                                            Image("Group 6779")
                                                .resizable()
                                                .frame(width: 20, height: 25, alignment: .center)
                                                .padding(.leading)
                                            Spacer()
                                            TextField("Adults", text: .constant(""))
                                                .foregroundColor(Color("000000").opacity(0.4))
                                                .font(Font.custom("poppins", size: 12))
                                                .padding(.leading,10)
                                                .keyboardType(.numberPad)
                                        }.padding(.horizontal)
                                    )
                                Spacer()
                                RoundedRectangle(cornerRadius: 80)
                                    .foregroundColor(Color("White"))
                                    .frame(height: 50, alignment: .center)
                                    .overlay(
                                        HStack{
                                            Image("Group 6780")
                                                .resizable()
                                                .frame(width: 20, height: 20, alignment: .center)
                                                .padding(.leading)
                                            Spacer()
                                            TextField("Children", text: .constant(""))
                                                .foregroundColor(Color("000000").opacity(0.4))
                                                .font(Font.custom("poppins", size: 12))
                                                .padding(.leading,10)
                                                .keyboardType(.numberPad)
                                        }.padding(.horizontal)
                                    )
                            }.frame(width: UIScreen.main.bounds.width - 50)
                            
                            LoginButton(title: "Search", callback: {
                                viewRouter.currentPage = "SearchResults"
                                
                            }).padding(.vertical)
                            
                        }
                    }
                    else if selectedType == "Stadium" {
                        StadiumSearch()
                    } else {
                        VStack{
                            SearchBar(searchQuery: .constant(""),caption: "City, Landmark or Property")
                            HStack{
                                RoundedRectangle(cornerRadius: 80)
                                    .foregroundColor(Color("White"))
                                    .frame(height: 40, alignment: .center)
                                    .overlay(
                                        HStack{
                                            Image("Group 3821")
                                                .resizable()
                                                .frame(width: 15, height: 20, alignment: .center)
                                            Text("Around me")
                                                .font(Font.custom("poppins", size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color(textColor).opacity(0.5))
                                        }.padding(.horizontal)
                                    )
                                Spacer()
                                RoundedRectangle(cornerRadius: 80)
                                    .foregroundColor(Color("White"))
                                    .frame(height: 40, alignment: .center)
                                    .overlay(
                                        HStack{
                                            Image("Group 3820")
                                                .resizable()
                                                .frame(width: 20, height: 20, alignment: .center)
                                            Text("Choose on map")
                                                .font(Font.custom("poppins", size: 14))
                                                .fontWeight(.regular)
                                                .foregroundColor(Color(textColor).opacity(0.5))
                                                .lineLimit(1)
                                        }.padding(.horizontal)
                                    )
                            }.frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.vertical,10)
                            VStack{
                                SearchDateControl(searchQuery: .constant(""),caption: "Check-In-Date")
                                    .padding(.bottom)
                                SearchDateControl(searchQuery: .constant(""),caption: "Check-out-Date")
                                    .padding(.bottom)
                               
                            }
                            
                            
                            
                            
                            LoginButton(title: "Search", callback: {
                                
                            }).padding(.vertical)
                            
                        }
                    }
                    
                    
                    
                }
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
        
    }
    
    func markAllFalse (index: Int) {
        for i in 0 ..< types.count {
            if i != index {
                types[i] = false
            }
        }
    }
}

struct SearchArea_Previews: PreviewProvider {
    static var previews: some View {
        SearchArea()
        //StadiumSearch()
    }
}

struct StadiumSearch: View {
    var textColor: String = "000000"
    var body: some View{
        
        VStack{
            SearchBar(searchQuery: .constant(""),caption: "City, Landmark or Property")
            HStack{
                RoundedRectangle(cornerRadius: 80)
                    .foregroundColor(Color("White"))
                    .frame(height: 40, alignment: .center)
                    .overlay(
                        HStack{
                            Image("Group 3821")
                                .resizable()
                                .frame(width: 15, height: 20, alignment: .center)
                            Text("Around me")
                                .font(Font.custom("poppins", size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor).opacity(0.5))
                        }.padding(.horizontal)
                    )
                Spacer()
                RoundedRectangle(cornerRadius: 80)
                    .foregroundColor(Color("White"))
                    .frame(height: 40, alignment: .center)
                    .overlay(
                        HStack{
                            Image("Group 3820")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                            Text("Choose on map")
                                .font(Font.custom("poppins", size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor).opacity(0.5))
                                .lineLimit(1)
                        }.padding(.horizontal)
                    )
            }.frame(width: UIScreen.main.bounds.width - 50)
                .padding(.vertical,10)
            VStack{
                SearchDateControl(searchQuery: .constant(""),caption: "Check-In-Date")
                    .padding(.bottom)
                SearchDateControl(searchQuery: .constant(""),caption: "Check-out-Date")
                    .padding(.bottom)
                SearchDateControl(searchQuery: .constant(""),caption: "Check-out-Date")
                    .padding(.bottom)
                SearchTimeControl(searchQuery: .constant(""),caption: "Check-In-Time")
                    .padding(.bottom)
                SearchTimeControl(searchQuery: .constant(""),caption: "Check-Out-Time")
                    .padding(.bottom)
               
                
                
               
            }
            
            
            
            
            LoginButton(title: "Search", callback: {
                
            }).padding(.vertical)
            
        }
    }
}

struct ChaletSearch: View {
    var textColor: String = "000000"
    var body: some View{
        
        VStack{
            SearchBar(searchQuery: .constant(""),caption: "City, Landmark or Property")
            HStack{
                RoundedRectangle(cornerRadius: 80)
                    .foregroundColor(Color("White"))
                    .frame(height: 40, alignment: .center)
                    .overlay(
                        HStack{
                            Image("Group 3821")
                                .resizable()
                                .frame(width: 15, height: 20, alignment: .center)
                            Text("Around me")
                                .font(Font.custom("poppins", size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor).opacity(0.5))
                        }.padding(.horizontal)
                    )
                Spacer()
                RoundedRectangle(cornerRadius: 80)
                    .foregroundColor(Color("White"))
                    .frame(height: 40, alignment: .center)
                    .overlay(
                        HStack{
                            Image("Group 3820")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                            Text("Choose on map")
                                .font(Font.custom("poppins", size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(textColor).opacity(0.5))
                                .lineLimit(1)
                        }.padding(.horizontal)
                    )
            }.frame(width: UIScreen.main.bounds.width - 50)
                .padding(.vertical,10)
            VStack{
                SearchDateControl(searchQuery: .constant(""),caption: "Check-In-Date")
                    .padding(.bottom)
                SearchDateControl(searchQuery: .constant(""),caption: "Check-out-Date")
                    .padding(.bottom)
               
            }
            
            
            
            
            LoginButton(title: "Search", callback: {
                
            }).padding(.vertical)
            
        }
    }
}


