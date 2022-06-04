//
//  AddServiceCard.swift
//  SmartBookings
//
//  Created by Sheheryar on 04/06/2022.
//

import SwiftUI

struct AddServiceCard: View {
    var imageName: String = "informationImage"
    var title: String = "Basic Information"
    var description: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac odio at urna curs us lacinia."
   
    var body: some View {
      
        RoundedRectangle(cornerRadius: 7)
            .frame(width: UIScreen.main.bounds.width - 50, height: 135, alignment: .center)
            .foregroundColor(Color("White"))
            .shadow(radius: 2.5)
            .overlay(
                VStack{
                    HStack{
                        Circle()
                            .frame(width: 80, height: 80, alignment: .center)
                            .foregroundColor(Color("White"))
                            .shadow(radius: 0.85)
                            .overlay(
                                Image(imageName)
                                    .resizable()
                                    .frame(width: 47, height: 47, alignment: .center)
                            )
                        
                        VStack{
                            Spacer()
                            HStack {
                                Text("Basic Information")
                                    .font(Font.custom("poppins", size: 15))
                                    .foregroundColor(Color("000000").opacity(0.8))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac odio at urna curs us lacinia.")
                                    .font(Font.custom("poppins", size: 11))
                                    .foregroundColor(Color("000000").opacity(0.8))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }.padding(.top,1)
                            Spacer()
                            
                        }
                    }.padding(.horizontal,20)
                    
                    
                    
                        
                }
            )

    }
}

struct AddServiceCard_Previews: PreviewProvider {
    static var previews: some View {
        AddServiceCard()
    }
}
