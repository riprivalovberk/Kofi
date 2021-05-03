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
    @State var wifiSpeed: String = "Fast (214 Mbps)"
    @State var outlets: Int = 20
    @State var reviews: Double = 4.8
    
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image("strada")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(height: 290)
                            .background(Color.black)
                            .padding(.bottom, 10)
                    }
                    .edgesIgnoringSafeArea(.horizontal)
                    
                    Text(self.name)
                        .font(.system(size: 22)).bold()
                        .padding(.leading, 50)
                        .padding(.top, 20)
                    Text("Coffee Shop | $ | 8 min. away")
                        .font(.system(size: 16))
                        .padding(.leading, 50)
                        .padding(.bottom, 20)
                    (Text("Status: ").bold() + Text("Few seats available"))
                        .padding(.leading, 50)
                    
                    (Text("Wifi Speed: ").bold() + Text(self.wifiSpeed))
                        .padding(.leading, 50)
                    
                    (Text("Power Outlets: ").bold() + Text(String(self.outlets)))
                        .padding(.leading, 50)
                        .padding(.bottom, 30)
                    //HStack {
                    //    self.reviews
                    //}
                    
                    
                }
                .edgesIgnoringSafeArea(.leading)
                
            }
            .edgesIgnoringSafeArea(.leading)
            
            Button(action: {
                print("Floating Button Click")
            }, label: {
                NavigationLink(destination: register()) {
                    Text("Take me there")
                        .bold()
                        .font(.custom("Helvetica-Light", size: 16))
                    
                }
            })
            
            .frame(width: 150, height: 50, alignment: .center)
            .background(Color(UIColor(red: 0.02, green: 0.51, blue: 0.79, alpha: 1.00)))
            .foregroundColor(Color.white)
            .cornerRadius(4)
        }
        .navigationBarBackButtonHidden(true)
        .padding(.top, 145.0)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
        
    }
    
    
}

