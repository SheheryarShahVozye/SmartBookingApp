//
//  TermsAndConditions.swift
//  SmartBookings
//
//  Created by Sheheryar on 09/06/2022.
//

import SwiftUI

struct TermsAndConditions: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Terms of Use")
                ScrollView{
                    VStack{
                        HStack{
                            Text("Lorem ipsum dolor")
                                .foregroundColor(Color("000000").opacity(0.7))
                                .font(Font.custom("poppins", size: 18))
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }.padding(.horizontal)
                        VStack{
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Etiam odio est, laoreet vitae dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam malesuada at orci vitae dapibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus.")
                                .foregroundColor(Color("000000").opacity(0.6))
                                .font(Font.custom("poppins", size: 15))
                                .fontWeight(.regular)
                        }.padding(.horizontal)
                            .padding(.top,10)
                        VStack{
                            HStack{
                                Text("Lorem ipsum dolor")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 18))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }.padding(.horizontal)
                            VStack{
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Etiam odio est, laoreet vitae dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam malesuada at orci vitae dapibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus.")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.regular)
                            }.padding(.horizontal)
                                .padding(.top,10)
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                Text("Lorem ipsum dolor")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 18))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }.padding(.horizontal)
                            VStack{
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Etiam odio est, laoreet vitae dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam malesuada at orci vitae dapibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus.")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.regular)
                            }.padding(.horizontal)
                                .padding(.top,10)
                        }.padding(.top)
                        
                        VStack{
                            HStack{
                                Text("Lorem ipsum dolor")
                                    .foregroundColor(Color("000000").opacity(0.7))
                                    .font(Font.custom("poppins", size: 18))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }.padding(.horizontal)
                            VStack{
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Etiam odio est, laoreet vitae dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam malesuada at orci vitae dapibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus.")
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .font(Font.custom("poppins", size: 15))
                                    .fontWeight(.regular)
                            }.padding(.horizontal)
                                .padding(.top,10)
                        }.padding(.top)
                       
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct TermsAndConditions_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditions()
    }
}
