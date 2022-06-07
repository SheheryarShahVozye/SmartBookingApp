//
//  RulesScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI
import UIKit
struct RulesScreen: View {
    
    init() {
        UITextView.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        ZStack{
            VStack{
                TopNavigation(titleText: "Service Description")
                VStack{
                    HStack{
                        Text("Rules")
                            .foregroundColor(Color("000000").opacity(0.8))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,30)
                    HStack{
                        Text("Please set the house rules for your service")
                            .foregroundColor(Color("000000").opacity(0.6))
                            .font(Font.custom("poppins", size: 12))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }.padding(.horizontal,30)
                }
                ScrollView{
                    
                    VStack{
                        
                        RuleCard(title: "Events & Parties allowed")
                        RuleCard(title: "Pets Allowed")
                        RuleCard(title: "Smoking Allowed")
                        RuleCard(title: "Suitable for Childrens (2-14)")
                        RuleCard(title: "Suitable for grooms")
                        RuleCard(title: "Suitable for Infants (Under 2)")
                    }
                    
                    HStack{
                        Text("+ Add Additional Rules")
                            .foregroundColor(Color("FEBB12"))
                            .font(Font.custom("poppins", size: 16))
                            .fontWeight(.semibold)
                        Spacer()
                        
                    }.padding(.horizontal,20)
                        .padding(.vertical)
                }
                Spacer()
                
                
                
                BottomNavigation()
            }
            
            ZStack{
                VStack {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("000000"))
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: UIScreen.main.bounds.width - 50, height: 450, alignment: .center)
                    .foregroundColor(Color("F2F5F9"))
                    .shadow(color: Color("000000"), radius: 2, x: 0, y: 1)
                    .overlay(
                        VStack{
                            HStack{
                                Spacer()
                                Image("CrossIcon")
                                    .resizable()
                                    .frame(width: 26, height: 26, alignment: .center)
                            }.padding(.horizontal)
                                .padding(.top)
                            Text("Add Additional Rule")
                                .foregroundColor(Color("000000").opacity(0.8))
                                .font(Font.custom("poppins", size: 18))
                                .fontWeight(.bold)
                            
                            RoundedRectangle(cornerRadius: 45)
                                .frame(width: UIScreen.main.bounds.width - 85, height: 250, alignment: .center)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 1)
                                .overlay(
                                    VStack{
                                        TextEditor(text: .constant("dadadadadad"))
                                            .frame(width: UIScreen.main.bounds.width - 100, height: 210, alignment: .center)
                                           .lineSpacing(10)
                                           .autocapitalization(.words)
                                           .disableAutocorrection(true)
                                           .cornerRadius(45)
                                           
                                    }.padding(.horizontal)
                                )
                            

                            RoundedRectangle(cornerRadius: 100)
                                .frame(width: 200, height: 70, alignment: .center)
                                .foregroundColor(Color("FEBB12"))
                                .overlay(
                                  Text("Done")
                                    .foregroundColor(Color("04304B"))
                                    .font(Font.custom("poppins", size: 20))
                                    .fontWeight(.regular)
                                ).onTapGesture {
                                    
                                }.padding(.vertical,5)
                                
                            
                            Spacer()
                            
                        }
                    )
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
}

struct RulesScreen_Previews: PreviewProvider {
    static var previews: some View {
        RulesScreen()
    }
}
