//
//  FilterView.swift
//  Kofi
//
//  Created by muca on 5/2/21.
//
import SwiftUI
import Foundation

struct FilterView: View {
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                VStack(alignment: .leading) {
                    Button(action: {
                        print("Strada Button Click")
                    }, label: {
                        NavigationLink(destination: CafeView()) {
                            Image("strada")
                                //.resizable()
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .edgesIgnoringSafeArea(.horizontal)
                                .frame(height: 220.0)
                        }
                    })
                    Text("Caffe Strada")
                        .bold()
                        .font(.system(size: 14))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                    Text("Sponsored")
                        .underline()
                        .font(.system(size: 10))
                        + Text(" | Few Seats Available | High Speed Wifi | 8 min.")
                        .font(.system(size: 10))
                        
                }
                Spacer()
                VStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        Button(action: {
                            print("Milano Button Click")
                        }, label: {
                            NavigationLink(destination: CafeView()) {
                                Image("cafe-milano")
                                    //.resizable()
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .edgesIgnoringSafeArea(.horizontal)
                                    .frame(height: 220.0)
                            }
                        })
                        Text("Cafe Milano")
                            .bold()
                            .font(.system(size: 14))
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            
                        Text("Few Seats Available | High Speed Wifi | 8 min.")
                            .font(.system(size: 10))
                    }
                }
                Spacer()
            }
       }
    }
}
