//
//  logInView.swift
//  Kofi
//
//  Created by Bruce Deng on 5/5/21.
//

import Foundation
import SwiftUI
import Firebase
//import FirebaseAuth

struct logInView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    @State var authenticate: Bool = false
    
    
    var body: some View {
        VStack {

            Text("Log in")
                .multilineTextAlignment(.leading)
                .font(.custom("", size: 32))
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)


            TextField("  Email Address", text: $username)
                .frame(width: 300, height: 50, alignment: .center)
                .background(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)))
                .foregroundColor(Color.black)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(4)
                .font(.custom("Helvetica-Light", size: 16))
                .padding()


            SecureField("   Password", text: $password)
                .frame(width: 300, height: 50, alignment: .center)
                .background(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)))
                .foregroundColor(Color.black)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(4)
                .font(.custom("Helvetica-Light", size: 16))
                .padding()
            
            Spacer()


            Button(action: {
                
                Auth.auth().signIn(withEmail: username, password: password) {result, error in
                    
                    if let error = error {
                        print("error")
                    }
                    else {
                        authenticate = true
                        return
                    }


                }
                
                if !authenticate {
                    Text("Incorrect email/password. Please Try again")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                print("Floating Button Click")
            }, label: {
                NavigationLink(destination: mapView()) {
                    Text("Next")
                        .bold()
                        .font(.custom("Helvetica-Light", size: 16))

                }
            })
                .frame(width: 350, height: 50, alignment: .center)
                .background(Color(UIColor(red: 0.02, green: 0.51, blue: 0.79, alpha: 1.00)))
                .foregroundColor(Color.white)
                .cornerRadius(4)
            



        }

    }
    
    
}
