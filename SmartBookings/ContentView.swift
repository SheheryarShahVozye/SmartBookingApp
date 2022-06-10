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
        } else if viewRouter.currentPage == "MyProfileScreen" {
            MyProfileScreen()
        } else if viewRouter.currentPage == "Messages" {
            Messages()
        } else if viewRouter.currentPage == "PrivacyPolicyScreen" {
            PrivacyPolicyScreen()
        } else if viewRouter.currentPage == "TermsAndConditions" {
            TermsAndConditions()
        } else if viewRouter.currentPage == "FAQs" {
            FAQs()
        } else if viewRouter.currentPage == "BecomeVendor" {
            BecomeVendor()
        }  else if viewRouter.currentPage == "CompanyProfile" {
            CompanyProfile()
        } else if viewRouter.currentPage == "RequestSubmitScreen" {
            RequestSubmitScreen()
        } else if viewRouter.currentPage == "AddService" {
            AddService()
        } else if viewRouter.currentPage == "BasicInformation" {
            BasicInformation()
        } else if viewRouter.currentPage == "BasicInfoDetail" {
            BasicInfoDetail()
        } else if viewRouter.currentPage == "RulesScreen" {
            RulesScreen()
        } else if viewRouter.currentPage == "SafetyScreen" {
            SafetyScreen()
        } else if viewRouter.currentPage == "ServiceDescription" {
            ServiceDescription()
        } else if viewRouter.currentPage == "ServiceLocation" {
            ServiceLocation()
        } else if viewRouter.currentPage == "PriceDetailScreen" {
            PriceDetailScreen()
        } else if viewRouter.currentPage == "BookingSettingsScreen" {
            BookingSettingsScreen()
        } else if viewRouter.currentPage == "BookingTypes" {
            BookingTypes()
        } else if viewRouter.currentPage == "CancellationPolicyScreen" {
             CancellationPolicyScreen()
        } else if viewRouter.currentPage == "AddOnScreen" {
            AddOnScreen()
        } else if viewRouter.currentPage == "MyServiceScreen" {
           MyServiceScreen()
        } else if viewRouter.currentPage == "ServiceBookingScreen" {
            ServiceBookingScreen()
        } else if viewRouter.currentPage == "BookingDetailsScreen" {
             BookingDetailsScreen()
        } else if viewRouter.currentPage ==  "FilterScreen" {
            FilterScreen()
        }
    }
}
