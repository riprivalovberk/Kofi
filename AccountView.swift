//
//  AccountView.swift
//  SwiftUIStarterKitApp
//
//  Created by Osama Naeem on 08/08/2019.
//  Copyright © 2019 NexThings. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    @State var notificationToggle: Bool = false
    @State var locationUsage: Bool = false
    @State var name: String = "Richard Privalov"
    @State var email: String = "riprivalov@berkeley.edu"
    @State var currencyArray: [String] = ["$ US Dollar", "£ GBP", "€ Euro"]
    
    @State var rank: String = "Diamond"
    @State var points: Int = 420
    
    @State var selectedPaymentMethod: Int = 1
    
    var body: some View {
        GeometryReader { g in
            VStack {
                Image("CroppedMe")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .padding(.bottom, 10)
                Text(self.name)
                    .font(.system(size: 20))
                    
                Form {
                    
                    Section(header: Text("Email:")) {
                        Text(self.email)

                    }
                    Section(header: Text("Rewards:")) {
                        Text("Rank: ").bold() + Text(self.rank)
                       
                        Text("Reward Points: ").bold() + Text(String(self.points))
                    }
                    
                    Section(header: Text("Achievements")) {
                        NavigationLink(destination: Text("Badges")) {
                             Text("Collected Badges:")
                         }
                    }
                    Section(header: Text("Log in:")) {
                        Button(action: {
                            print("Logged out")
                        }, label: {
                            NavigationLink(destination: loggedOut()) {
                                Text("Log Out")
                            }
                        })

                    }
                        
            }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
         }
        }
    }
 }

