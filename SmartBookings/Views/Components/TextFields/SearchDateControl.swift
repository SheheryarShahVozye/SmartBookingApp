//
//  SearchDateControl.swift
//  SmartBookings
//
//  Created by Sheheryar on 24/05/2022.
//

import SwiftUI

struct SearchDateControl: View {
    @Binding var searchQuery: String
    var caption: String = "Check-In"
    var imageName: String = "Group 3814"
    @State var date: Date =  Date()
    var body: some View {
        RoundedRectangle(cornerRadius: 80)
            .foregroundColor(Color("White"))
            .frame(width: UIScreen.main.bounds.width - 50, height: 61, alignment: .center)
            .overlay(


                    ZStack {
                        DatePicker("label", selection: $date, displayedComponents: [.date])
                                       .datePickerStyle(CompactDatePickerStyle())
                                       .labelsHidden()
                        HStack{
                            Image(imageName)
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.leading)

                            TextField(caption, text: $searchQuery)
                                .foregroundColor(Color("000000").opacity(0.4))
                                .font(Font.custom("poppins", size: 12))
                                .padding(.leading,10)

                        }
                        .userInteractionDisabled()
                        .padding(.horizontal)
                            
                    }

            )

    }
    
   
}

struct SearchTimeControl: View {
    @Binding var searchQuery: String
    var caption: String = "Check-In"
    var imageName: String = "Group 3814"
    @State var date: Date =  Date()
    var body: some View {
        RoundedRectangle(cornerRadius: 80)
            .foregroundColor(Color("White"))
            .frame(width: UIScreen.main.bounds.width - 50, height: 61, alignment: .center)
            .overlay(


                    ZStack {
                        DatePicker("label", selection: $date, displayedComponents: [.hourAndMinute])
                                       .datePickerStyle(CompactDatePickerStyle())
                                       .labelsHidden()
                        HStack{
                            Image(imageName)
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.leading)

                            TextField(caption, text: $searchQuery)
                                .foregroundColor(Color("000000").opacity(0.4))
                                .font(Font.custom("poppins", size: 12))
                                .padding(.leading,10)

                        }
                        .userInteractionDisabled()
                        .padding(.horizontal)
                            
                    }

            )

    }
    
   
}

struct SearchDateControl_Previews: PreviewProvider {
    static var previews: some View {
        SearchDateControl(searchQuery: .constant(""))
    }
}

struct NoHitTesting: ViewModifier {
    func body(content: Content) -> some View {
        SwiftUIWrapper { content }.allowsHitTesting(false)
    }
}

extension View {
    func userInteractionDisabled() -> some View {
        self.modifier(NoHitTesting())
    }
}

struct SwiftUIWrapper<T: View>: UIViewControllerRepresentable {
    let content: () -> T
    func makeUIViewController(context: Context) -> UIHostingController<T> {
        UIHostingController(rootView: content())
    }
    func updateUIViewController(_ uiViewController: UIHostingController<T>, context: Context) {}
}
