//
//  LoginButton.swift
//  SmartBookings
//
//  Created by Sheheryar on 18/05/2022.
//

import SwiftUI

struct LoginButton: View {
    var title: String = "Login"
    var callback: () -> Void = {}
    var body: some View {
       RoundedRectangle(cornerRadius: 97.45)
            .foregroundColor(Color("FEBB12"))
            .frame(width: UIScreen.main.bounds.width - 50, height: 70, alignment: .center)
            .overlay(
                        Text(title)
                            .font(Font.custom("poppins", size: 19))
                            .foregroundColor(Color("04304B"))
                            .fontWeight(.semibold)
            ).onTapGesture {
                callback()
            }
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton(callback: {})
    }
}
