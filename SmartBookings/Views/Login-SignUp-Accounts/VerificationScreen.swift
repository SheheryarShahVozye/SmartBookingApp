//
//  VerificationScreen.swift
//  SmartBookings
//
//  Created by Sheheryar on 18/05/2022.
//

import SwiftUI

struct VerificationScreen: View {
    var textColor: String = "000000"
    var buttonbg: String = "FEBB12"
    var textColor2: String = "393F45"
    @EnvironmentObject var viewRouter: ViewRouter
    @StateObject var viewModel = ViewModel()
         @State var isFocused = false
         
         let textBoxWidth = UIScreen.main.bounds.width / 8
         let textBoxHeight = UIScreen.main.bounds.width / 8
         let spaceBetweenBoxes: CGFloat = 20
         let paddingOfBox: CGFloat = 1
         var textFieldOriginalWidth: CGFloat {
             (textBoxWidth*4)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
         }
    var body: some View {
        ZStack{
            VStack{
               
                HStack{
                    Image("Path 10545")
                        .resizable()
                        .frame(width: 11.4, height: 21.17, alignment: .leading)
                        .padding(.leading,20)
                        
                    Spacer()
                    Text("Verification")
                        .font(Font.custom("poppins", size: 18))
                        .foregroundColor(Color(textColor))
                        .fontWeight(.regular)
                        .padding(.trailing)
                        .offset(x:-10)
                    Spacer()
                }
                .padding(.top,50)
                

                VStack{
                    
               
                Image("Group 8026")
                    .resizable()
                    .frame(width: 228.1, height: 173.72, alignment: .center)
                    .padding(.top,30)

               
                
                Text("Enter the code?")
                    .font(Font.custom("poppins", size: 23))
                    .foregroundColor(Color(textColor))
                    .fontWeight(.semibold)
                    .padding(.top,30)
                
                Text("Enter the code that you received through SMS.")
                    .font(Font.custom("poppins", size: 14))
                    .foregroundColor(Color(textColor2))
                    .fontWeight(.regular)
                    .padding(.vertical,30)
                
                VStack{
                    ZStack{
                        HStack (spacing: 0){
                            Spacer()
                                                 otpText(text: viewModel.otp1)
                            Spacer()
                                                 otpText(text: viewModel.otp2)
                            Spacer()
                                                 otpText(text: viewModel.otp3)
                            Spacer()
                                                 otpText(text: viewModel.otp4)
                            Spacer()
                                                
                                             }
                                             
                                             
                                             TextField("", text: $viewModel.otpField)
                                             .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                                             .disabled(viewModel.isTextFieldDisabled)
                                             .textContentType(.oneTimeCode)
                                             .foregroundColor(.clear)
                                             .accentColor(.clear)
                                             .background(Color.clear)
                                             .keyboardType(.numberPad)
                    }
                }.padding(.vertical,10)
                
              
                
                LoginButton(title:"Verify",callback: {
                    viewRouter.currentPage = "VerificationComplete"
                }).padding(.top,30)
                }.padding(.top,10)
                
                Spacer()
               
             
                
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .ignoresSafeArea(.all)
            .background(Color("F2F5F9"))
    }
    
    private func otpText(text: String) -> some View {
              
              return Text(text)
                  .font(.title)
                  .frame(width: textBoxWidth, height: textBoxHeight)
                  .background(
                  Circle()
                    .frame(width: 74.75, height: 74.75, alignment: .center)
                    .foregroundColor(Color("White"))
                    .shadow(radius: 0.5)
                  )
                 
//                  .background(
//                    VStack{
//                    Spacer()
//                    RoundedRectangle(cornerRadius: 1)
//                        .frame(height: 0.5)
//                   })
                  .padding(paddingOfBox)
          }
}

struct VerificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        VerificationScreen()
    }
}


class ViewModel: ObservableObject {
    
    @Published var otpField = "" {
        didSet {
            guard otpField.count <= 4,
                  otpField.last?.isNumber ?? true else {
                otpField = oldValue
                return
            }
        }
    }
    var otp1: String {
        guard otpField.count >= 1 else {
            return ""
        }
        return String(Array(otpField)[0])
    }
    var otp2: String {
        guard otpField.count >= 2 else {
            return ""
        }
        return String(Array(otpField)[1])
    }
    var otp3: String {
        guard otpField.count >= 3 else {
            return ""
        }
        return String(Array(otpField)[2])
    }
    var otp4: String {
        guard otpField.count >= 4 else {
            return ""
        }
        return String(Array(otpField)[3])
    }
    
//    var otp5: String {
//        guard otpField.count >= 5 else {
//            return ""
//        }
//        return String(Array(otpField)[4])
//    }
//
//    var otp6: String {
//        guard otpField.count >= 6 else {
//            return ""
//        }
//        return String(Array(otpField)[5])
//    }
    
    @Published var borderColor: Color = .black
    @Published var isTextFieldDisabled = false
    var successCompletionHandler: (()->())?
    
    @Published var showResendText = false

}
