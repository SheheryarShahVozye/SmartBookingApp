//
//  SearchedDetail.swift
//  SmartBookings
//
//  Created by Sheheryar on 25/05/2022.
//

import SwiftUI

struct SearchedDetail: View {
    var textColor: String = "000000"
    var textColor2: String = "AAAAAA"
    var textColor3: String = "393F45"
    var buttonbg: String = "FEBB12"
    @State var selectedTab = "Reviews"
    @State var headings: [String] = ["Overview","Description","Reviews","Terms","Map"]
    @State var check: [Bool] = [true,false,false,false,false]
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack{
              //  ScrollView{
                    VStack{
                        ZStack{
                           
                            GeometryReader { geometry in
                                ImageCarouselView(numberOfImages: 3) {
                                    Image("Group 5710")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: geometry.size.width, height: geometry.size.height)
                                        .clipped()
                                    Image("Group 5710")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: geometry.size.width, height: geometry.size.height)
                                        .clipped()
                                    Image("Group 5710")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: geometry.size.width, height: geometry.size.height)
                                        .clipped()
                                }
                            }
                            
                            VStack{
                                
                                HStack{
                                    Circle()
                                        .frame(width: 47, height: 47, alignment: .center)
                                        .foregroundColor(Color("White"))
                                        .overlay(
                                            Image("backIocn")
                                                .resizable()
                                                .frame(width: 11, height: 22, alignment: .center)
                                        )
                                    Spacer()
                                    Circle()
                                        .frame(width: 47, height: 47, alignment: .center)
                                        .foregroundColor(Color("White"))
                                        .overlay(
                                            Image("shareIcon")
                                                .resizable()
                                                .frame(width: 24, height: 25, alignment: .center)
                                        )
                                    Circle()
                                        .frame(width: 47, height: 47, alignment: .center)
                                        .foregroundColor(Color("White"))
                                        .overlay(
                                            Image("Vectorheart")
                                                .resizable()
                                                .frame(width: 24, height: 21, alignment: .center)
                                        )
                                    
                                }
                                .padding(.top,AppUtil.getNotch() == true ? 50 : 30)
                                .padding(.horizontal)
                                
                                Spacer()
                            }

                        }
                        
                        
                    }.frame(width: UIScreen.main.bounds.width, height: 350, alignment: .center)
                        .background(RoundedCorners(color: Color(""), tl: 0, tr: 0, bl: 15, br: 15))
                        .ignoresSafeArea()
                    
                    VStack{
                        
                        HStack{
                            
                            ForEach(0 ..< headings.count,id:\.self) { index in
                                Spacer()
                                if check[index] == true {
                                    RoundedRectangle(cornerRadius: 45)
                                        .frame(width: 86, height: 34, alignment: .center)
                                        .foregroundColor(Color("FEBB12"))
                                        .overlay(
                                          Text(headings[index])
                                            .font(Font.custom("poppins", size: 11))
                                            .foregroundColor(Color(textColor))
                                            .fontWeight(.regular)
                                          

                                        )
                                        .padding(.horizontal,5)
                                        
                                } else {
                                    Text(headings[index])
                                        .font(Font.custom("poppins", size: 11))
                                        .foregroundColor(Color(textColor).opacity(0.5))
                                        .fontWeight(.regular)
                                        .padding(.horizontal,5)
                                        .onTapGesture{
                                            check[index] = true
                                            markAllFalse(index: index)
                                            selectedTab = headings[index]
                                        }
                                        
                                }
                               
                                
                                Spacer()
                            }
                           
                          
                        }
                        .padding(.vertical,10)
                        
                        VStack{
                            ScrollView {
                                
                            
                            if selectedTab == "Overview" {
                                VStack{
                                    HStack{
                                        VStack{
                                            HStack {
                                                Text("Lorem Ipsum Hotel")
                                                    .font(Font.custom("poppins", size: 20))
                                                    .foregroundColor(Color(textColor))
                                                .fontWeight(.regular)
                                                
                                                Spacer()
                                            }.padding(.bottom,5)
                                            
                                            HStack {
                                                Text("The ulitimate 5 star hotel")
                                                    .font(Font.custom("poppins", size: 11))
                                                .foregroundColor(Color(textColor).opacity(0.4))
                                                
                                                Spacer()
                                            }
                                                
                                        }
                                        
                                        Spacer()
                                        
                                        RoundedRectangle(cornerRadius: 45)
                                            .frame(width: 115, height: 35, alignment: .center)
                                            .foregroundColor(Color(buttonbg))
                                            .overlay(
                                                Text("Vendor Profile")
                                                .font(Font.custom("poppins", size: 11))
                                                .foregroundColor(Color(textColor))
                                                .fontWeight(.regular)
                                            ).onTapGesture{
                                                viewRouter.currentPage = "VendorProfile"
                                            }
                                        
                                    }.padding(.horizontal)
                                    HStack{
                                        Spacer()
                                        VStack{
                                            Image("Locationpin")
                                                .resizable()
                                                .frame(width: 22, height: 32, alignment: .center)
                                            Text("Riyadh")
                                                .font(Font.custom("poppins", size: 8))
                                                .foregroundColor(Color(textColor).opacity(0.5))
                                                .fontWeight(.regular)
                                               
                                        }
                                        Spacer()
                                        VStack{
                                            Image("SqFitSize")
                                                .resizable()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("1200 sq2")
                                                .font(Font.custom("poppins", size: 8))
                                                .foregroundColor(Color(textColor).opacity(0.5))
                                                .fontWeight(.regular)
                                               
                                        }
                                        Spacer()
                                        VStack{
                                            Image("FamilyIcon")
                                                .resizable()
                                                .frame(width: 30, height: 28, alignment: .center)
                                            Text("For Families")
                                                .font(Font.custom("poppins", size: 8))
                                                .foregroundColor(Color(textColor).opacity(0.5))
                                                .fontWeight(.regular)
                                               
                                        }
                                        Spacer()
                                        VStack{
                                            Image("WebSite")
                                                .resizable()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("www.lorem.com")
                                                .font(Font.custom("poppins", size: 8))
                                                .foregroundColor(Color(textColor).opacity(0.5))
                                                .fontWeight(.regular)
                                               
                                        }
                                        Spacer()
                                        
                                    }
                                    .padding(.vertical,20)
                                    
                                    
                                    HStack{
                                        Text("Facilities")
                                            .font(Font.custom("poppins", size: 14))
                                            .foregroundColor(Color(textColor))
                                            .fontWeight(.regular)
                                        
                                        Spacer()
                                    }.padding(.horizontal)
                                        .padding(.vertical)
                                    
                                    HStack{
                                        Spacer()
                                        VStack{
                                            RoundedRectangle(cornerRadius: 15)
                                                .frame(width: 64, height: 64, alignment: .center)
                                                .foregroundColor(Color("White"))
                                                .shadow(radius: 1)
                                                .overlay(
                                                    Image("wifi")
                                                        .resizable()
                                                        .frame(width: 35, height: 28, alignment: .center)
                                                )
                                            
                                            Text("WIFI")
                                                .font(Font.custom("poppins", size: 10))
                                                .foregroundColor(Color(textColor2))
                                                .fontWeight(.regular)
                                        }
                                        
                                        Spacer()
                                        
                                        VStack{
                                            RoundedRectangle(cornerRadius: 15)
                                                .frame(width: 64, height: 64, alignment: .center)
                                                .foregroundColor(Color("White"))
                                                .shadow(radius: 1)
                                                .overlay(
                                                    Image("Rectangle 81")
                                                        .resizable()
                                                        .frame(width: 35, height: 28, alignment: .center)
                                                )
                                            
                                            Text("TV")
                                                .font(Font.custom("poppins", size: 10))
                                                .foregroundColor(Color(textColor2))
                                                .fontWeight(.regular)
                                        }
                                        
                                        Spacer()
                                        
                                        VStack{
                                            RoundedRectangle(cornerRadius: 15)
                                                .frame(width: 64, height: 64, alignment: .center)
                                                .foregroundColor(Color("White"))
                                                .shadow(radius: 1)
                                                .overlay(
                                                    Image("Cup")
                                                        .resizable()
                                                        .frame(width: 35, height: 28, alignment: .center)
                                                )
                                            
                                            Text("Coffee")
                                                .font(Font.custom("poppins", size: 10))
                                                .foregroundColor(Color(textColor2))
                                                .fontWeight(.regular)
                                        }
                                        
                                        Spacer()
                                        
                                        VStack{
                                            RoundedRectangle(cornerRadius: 15)
                                                .frame(width: 64, height: 64, alignment: .center)
                                                .foregroundColor(Color("White"))
                                                .shadow(radius: 1)
                                                .overlay(
                                                    Image("Parking")
                                                        .resizable()
                                                        .frame(width: 35, height: 28, alignment: .center)
                                                )
                                            
                                            Text("Parking")
                                                .font(Font.custom("poppins", size: 10))
                                                .foregroundColor(Color(textColor2))
                                                .fontWeight(.regular)
                                        }
                                        
                                        Spacer()
                                       
                                    }
                                }
                            }
                            else if selectedTab == "Description" {
                                VStack{
                                    HStack{
                                        Text("Description")
                                            .font(Font.custom("poppins", size: 19))
                                            .foregroundColor(Color(textColor).opacity(0.8))
                                            .fontWeight(.regular)
                                            
                                        Spacer()
                                    }.padding(.horizontal)
                                    
                                    HStack {
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta libero cursus quam mollis, et tempus odio porttitor. Etiam eget nulla dui.  Integer ullamcorper ullamcorper risus vulputate ornare. Etiam dignissim ligula et magna imperdiet congue. Donec vel est non diam laoreet scelerisque. Quisque volutpat congue magna.")
                                            .font(Font.custom("poppins", size: 11))
                                            .foregroundColor(Color(textColor).opacity(0.6))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                    
                                    }.padding(.horizontal)
                                        .padding(.vertical,10)
                                    
                                    HStack {
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta libero cursus quam mollis, et tempus odio porttitor. Etiam eget nulla dui.  Integer ullamcorper ullamcorper risus vulputate ornare. Etiam dignissim ligula et magna imperdiet congue. Donec vel est non diam laoreet scelerisque. Quisque volutpat congue magna.")
                                            .font(Font.custom("poppins", size: 11))
                                            .foregroundColor(Color(textColor).opacity(0.6))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                    
                                    }.padding(.horizontal)
                                        .padding(.vertical,10)
                                    
                                    HStack {
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta libero cursus quam mollis, et tempus odio porttitor. Etiam eget nulla dui. ")
                                            .font(Font.custom("poppins", size: 11))
                                            .foregroundColor(Color(textColor).opacity(0.6))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                    
                                    }.padding(.horizontal)
                                        .padding(.vertical,10)
                                }
                            }
                            else if selectedTab == "Terms" {
                                VStack{
                                    HStack{
                                        Text("Terms")
                                            .font(Font.custom("poppins", size: 19))
                                            .foregroundColor(Color(textColor).opacity(0.8))
                                            .fontWeight(.regular)
                                            
                                        Spacer()
                                    }.padding(.horizontal)
                                    
                                    HStack {
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta libero cursus quam mollis, et tempus odio porttitor. Etiam eget nulla dui.  Integer ullamcorper ullamcorper risus vulputate ornare. Etiam dignissim ligula et magna imperdiet congue. Donec vel est non diam laoreet scelerisque. Quisque volutpat congue magna.")
                                            .font(Font.custom("poppins", size: 11))
                                            .foregroundColor(Color(textColor).opacity(0.6))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                    
                                    }.padding(.horizontal)
                                        .padding(.vertical,10)
                                    
                                    HStack {
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta libero cursus quam mollis, et tempus odio porttitor. Etiam eget nulla dui.  Integer ullamcorper ullamcorper risus vulputate ornare. Etiam dignissim ligula et magna imperdiet congue. Donec vel est non diam laoreet scelerisque. Quisque volutpat congue magna.")
                                            .font(Font.custom("poppins", size: 11))
                                            .foregroundColor(Color(textColor).opacity(0.6))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                    
                                    }.padding(.horizontal)
                                        .padding(.vertical,10)
                                    
                                    HStack {
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta libero cursus quam mollis, et tempus odio porttitor. Etiam eget nulla dui. ")
                                            .font(Font.custom("poppins", size: 11))
                                            .foregroundColor(Color(textColor).opacity(0.6))
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                    
                                    }.padding(.horizontal)
                                        .padding(.vertical,10)
                                }
                            }
                            else if selectedTab == "Reviews" {
                                VStack{
                                    HStack{
                                        Text("Reviews")
                                            .font(Font.custom("poppins", size: 19))
                                            .foregroundColor(Color(textColor).opacity(0.8))
                                            .fontWeight(.regular)
                                            
                                        Text("(24)")
                                            .font(Font.custom("poppins", size: 7))
                                            .foregroundColor(Color(textColor3).opacity(0.6))
                                            .fontWeight(.regular)
                                        Spacer()
                                    }.padding(.horizontal)
                                    
                                    VStack{
                                      
                                            ForEach(0 ..< 7,id:\.self){ _ in
                                                ReviewCard()
                                                    .padding(5)
                                            }
                                        
                                       
                                        
                                    }
                                }
                            }
                           
                           
                            
                            HStack{
                                Spacer()
                                VStack{
                                    Text("SAR 180")
                                        .strikethrough()
                                        .font(Font.custom("poppins", size: 10))
                                        .foregroundColor(Color(textColor).opacity(0.5))
                                        .fontWeight(.regular)
                                    
                                    Text("SAR 120")
                                        .font(Font.custom("poppins", size: 24))
                                        .foregroundColor(Color(buttonbg))
                                        .fontWeight(.bold)
                                    
                                    Text("Per Night")
                                        .font(Font.custom("poppins", size: 11))
                                        .foregroundColor(Color(textColor).opacity(0.4))
                                        .fontWeight(.regular)
                                }
                                Spacer()
                                RoundedRectangle(cornerRadius: 76)
                                    .frame(width: 150, height: 50, alignment: .center)
                                    .foregroundColor(Color(buttonbg))
                                    .overlay(
                                      Text("Book")
                                        .font(Font.custom("poppins", size: 20))
                                        .foregroundColor(Color(textColor))
                                        .fontWeight(.regular)
                                    )
                                
                                Circle()
                                    .frame(width: 58, height: 58, alignment: .center)
                                    .foregroundColor(Color(buttonbg))
                                    .overlay(
                                        Image("chatIcon")
                                            .resizable()
                                            .frame(width: 32, height: 32, alignment: .center)
                                    )
                                
                                Spacer()
                                
                                
                            }.padding(.horizontal)
                                .padding(.vertical)
                            }
                        }
                    }
                    
             //   }
                BottomNavigation()
                Spacer()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Color("F2F5F9"))
            .ignoresSafeArea(.container, edges: .top)
    }
    
    func markAllFalse (index: Int) {
        for i in 0 ..< check.count {
            if i != index {
                check[i] = false
            }
        }
    }
}

struct SearchedDetail_Previews: PreviewProvider {
    static var previews: some View {
        SearchedDetail()
    }
}


struct RoundedCorners: View {
    var color: Color = .black
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let w = geometry.size.width
                let h = geometry.size.height
                
                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h / 2), w / 2)
                let tl = min(min(self.tl, h / 2), w / 2)
                let bl = min(min(self.bl, h / 2), w / 2)
                let br = min(min(self.br, h / 2), w / 2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .fill(self.color)
        }
    }
}

struct RoundedCornersStroke: View {
    var color: Color = .black
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let w = geometry.size.width
                let h = geometry.size.height
                
                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h / 2), w / 2)
                let tl = min(min(self.tl, h / 2), w / 2)
                let bl = min(min(self.bl, h / 2), w / 2)
                let br = min(min(self.br, h / 2), w / 2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .stroke(self.color, lineWidth: 1)
        }
    }
}

struct ImageCarouselView<Content: View>: View {
    private var numberOfImages: Int
    private var content: Content
    @State var slideGesture: CGSize = CGSize.zero
    @State private var currentIndex: Int = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
    }

    var body: some View {
        GeometryReader { geometry in
            // 1
            ZStack(alignment: .bottom) {
                HStack(spacing: 0) {
                    self.content
                }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
                    .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0)
                    // .animation(.spring())
                    .animation(Animation.spring(), value: 10)
                    
                    // Comment .onReceive method, to omit the Slider with time
                    .onReceive(self.timer) { _ in
                        self.currentIndex = (self.currentIndex + 1) % (self.numberOfImages == 0 ? 1 : self.numberOfImages)}
                    // Comment .gesture method, to omit the Swipe function
                    .gesture(DragGesture().onChanged{ value in
                        self.slideGesture = value.translation
                    }
                                .onEnded{ value in
                        if self.slideGesture.width < -50 {
                            if self.currentIndex < self.numberOfImages - 1 {
                                withAnimation {
                                    self.currentIndex += 1
                                }
                            }
                        }
                        if self.slideGesture.width > 50 {
                            if self.currentIndex > 0 {
                                withAnimation {
                                    self.currentIndex -= 1
                                }
                            }
                        }
                        self.slideGesture = .zero
                    })
                
                // 2
                HStack(spacing: 3) {
                    // 3
                    ForEach(0..<self.numberOfImages, id: \.self) { index in
                         // 4
                        Circle()
                            .frame(width: index == self.currentIndex ? 10 : 8,
                                   height: index == self.currentIndex ? 10 : 8)
                            .foregroundColor(index == self.currentIndex ? Color("FEBB12") : Color("F9F8F7").opacity(0.2))
                            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                            .padding(.bottom, 8)
                            .animation(Animation.spring(), value: 10)
                            
                    }
                }
            }
        }
    }
}


//struct ImageCarouselView_Previews: PreviewProvider {
//    static var previews: some View {
//
//        // 8
//        GeometryReader { geometry in
//            ImageCarouselView(numberOfImages: 3) {
//                Image("Group 5710")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: geometry.size.width, height: geometry.size.height)
//                    .clipped()
//                Image("Group 5710")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: geometry.size.width, height: geometry.size.height)
//                    .clipped()
//                Image("Group 5710")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: geometry.size.width, height: geometry.size.height)
//                    .clipped()
//            }
//        }.frame(width: UIScreen.main.bounds.width, height: 350, alignment: .center)
//            .background(RoundedCorners(color: Color(""), tl: 0, tr: 0, bl: 15, br: 15))
//    }
//}
