//
//  ContentView.swift
//  SmartBookings
//
//  Created by Sheheryar on 16/05/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        if viewRouter.currentPage == "splashscreen" {
            SplashScreen()
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        viewRouter.currentPage = "LoginScreen"
                    }
                })
        } else {
            RouteManager()
        }
        
       
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RouteManager: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        if viewRouter.currentPage == "LoginScreen" {
            LoginScreen()
        } else if viewRouter.currentPage == "SignUpScreen" {
            SignUpScreen()
        } else if viewRouter.currentPage == "VerificationComplete" {
            VerificationComplete()
        } else if viewRouter.currentPage == "VerificationScreen" {
            VerificationScreen()
        } else if viewRouter.currentPage == "Dashboard" {
            Dashboard()
        } else if viewRouter.currentPage == "SearchArea"{
            SearchArea()
        } else if viewRouter.currentPage == "SearchResults"{
            SearchResults()
        } else if viewRouter.currentPage == "SearchedDetail"{
            SearchedDetail()
        } else if viewRouter.currentPage == "VendorProfile"{
            VendorProfile()
        } else if viewRouter.currentPage == "MyBookings" {
            MyBookings()
        } else if viewRouter.currentPage == "Deals" {
            Deals()
        } else if viewRouter.currentPage == "Saved" {
        
        } else if viewRouter.currentPage == "Profile" {
            Profile()
        } else if viewRouter.currentPage == "NotificationScreen" {
            NotificationScreen()
        }
    }
}
