//
//  AccountView.swift
//  SwiftUIStarterKitApp
//
//  Created by Osama Naeem on 08/08/2019.
//  Copyright © 2019 NexThings. All rights reserved.
//

import SwiftUI

struct CafeView: View {
    @State var name: String = "Caffe Strada"
    @State var email: String = "cafeStrada@strada.com"
    @State var phoneNumber: String = "(510)-843-5282"
    @State var status: String = "Few Seats Available"
    @State var wifiSpeed: String = "High Speed WiFi"
    @State var outlets: Int = 20
    @State var reviews: Double = 4.8

    
    var body: some View {
        GeometryReader { g in
            VStack {
                Image("strada")
                    .resizable()
                    .frame(width: 300, height: 200)
                    .background(Color.black)
                    .padding(.bottom, 10)
                Text(self.name)
                    .font(.system(size: 20))
                    
                Form {
                    
                    
                    
                    Section(header: Text("General Information")) {
                        VStack {
                            Text(self.status)
                            Text(self.wifiSpeed)
                            Text(String(self.outlets))
                            Text(String(self.reviews))
                        }
                    }
                    
                    Section(header: Text("Contact Information:")) {
                        VStack {
                            Text(self.email)
                            Text(self.phoneNumber)
                        }

                    }

                        
            }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
         }
        }
    }
 }

