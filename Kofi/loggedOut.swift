//
//  ContentView.swift
//  Kofe
//
//  Created by muca on 4/3/21.
//  Copyright © 2021 Nightowls. All rights reserved.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var loggedIn : Bool = false
    @Published var navigateNowToLogIn: Bool = false
    @Published var navigateNowToSignup: Bool = false
}

struct StartView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        if settings.loggedIn {
            return AnyView(AccountView())
        }else {
            return AnyView(loggedOut())
        }
    }
}


struct loggedOut: View {
    
    let col1 = UIColor(red: 0, green: 10, blue: 0, alpha: 1)
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor(red: 0.02, green: 0.51, blue: 0.79, alpha: 1.00))
                VStack {
                    Color(UIColor(red: 0.02, green: 0.51, blue: 0.79, alpha: 1.00))
                        .edgesIgnoringSafeArea(.horizontal)
                        .edgesIgnoringSafeArea(.top)
                    VStack {
                        Color(UIColor(red: 0.02, green: 0.51, blue: 0.79, alpha: 1.00))
                        Color(UIColor(red: 0.02, green: 0.51, blue: 0.79, alpha: 1.00))
                        Color(UIColor(red: 0.02, green: 0.51, blue: 0.79, alpha: 1.00))
                        Color(UIColor(red: 0.98, green: 0.98, blue: 0.83, alpha: 1.00))
                            .edgesIgnoringSafeArea(.bottom)
                    }
                }
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Discover your\n next workspace")
                        .bold()
                        
                        .font(.custom("Helvetica", size: 26))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Floating Button Click")
                        }, label: {
                            NavigationLink(destination: logIn()) {
                                Text("LOG IN")
                                    .bold()
                                    .font(.custom("Helvetica-Light", size: 16))
                            }
                        })
                        
                        .frame(width: 150, height: 50, alignment: .center)
                        .background(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)))
                        .foregroundColor(Color.black)
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                        .cornerRadius(4)
                        
                        
                        
                        Spacer()
                        Button(action: {
                            print("Floating Button Click")
                        }, label: {
                            NavigationLink(destination: register()) {
                                Text("REGISTER")
                                    .bold()
                                    .font(.custom("Helvetica-Light", size: 16))
                                
                            }
                        })
                        
                        .frame(width: 150, height: 50, alignment: .center)
                        .background(Color(UIColor(red: 0.02, green: 0.51, blue: 0.79, alpha: 1.00)))
                        .foregroundColor(Color.white)
                        .cornerRadius(4)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}
struct logIn: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            
            Text("Log in")
                .multilineTextAlignment(.leading)
                .font(.custom("", size: 32))
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            
            TextField("  Email Address", text: $username)
            .frame(width: 350, height: 50, alignment: .center)
            .background(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)))
            .foregroundColor(Color.black)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .cornerRadius(4)
            .font(.custom("Helvetica-Light", size: 16))
            .padding()
            

            SecureField("   Password", text: $password)
            .frame(width: 350, height: 50, alignment: .center)
            .background(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)))
            .foregroundColor(Color.black)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .cornerRadius(4)
            .font(.custom("Helvetica-Light", size: 16))
            .padding()
            Spacer()
            
            Button(action: {
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
struct register: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            
            Text("Register")
                .multilineTextAlignment(.leading)
                .font(.custom("", size: 32))
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            
            TextField("  Email Address", text: $username)
            .frame(width: 350, height: 50, alignment: .center)
            .background(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)))
            .foregroundColor(Color.black)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .cornerRadius(4)
            .font(.custom("Helvetica-Light", size: 16))
            .padding()
            

            SecureField("   Password", text: $password)
            .frame(width: 350, height: 50, alignment: .center)
            .background(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)))
            .foregroundColor(Color.black)
            .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .cornerRadius(4)
            .font(.custom("Helvetica-Light", size: 16))
            .padding()
            
            SecureField("   Confirm Password", text: $password)
            .frame(width: 350, height: 50, alignment: .center)
            .background(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)))
            .foregroundColor(Color.black)
            .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .cornerRadius(4)
            .font(.custom("Helvetica-Light", size: 16))
            .padding()
            Spacer()
            
            Button(action: {
                print("Floating Button Click")
            }, label: {
                NavigationLink(destination: AccountView()) {
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        loggedOut()
            
    }
}

/*
VStack {
    //Button instance with closure
    Button("Click me!", action: {
        print("You clicked me! 1")
    })
    
    //Button instance with trailing closure.
    Button("Click me") {
        print("You clicked me! 2")
    }
    
    //Button instance with label view.
    Button(action: {
        print("You clicked me! 3")
    }, label: {
        Image(systemName: "pencil")
        Text("Edit")
    })
    //Button that is jsut an img.
    Button(action: {
        counter += 1
    }, label: {
        Image(systemName: "circle")
    })
    Spacer()
    Text(String(counter))
}
*/



//Text("Hello, World!").padding().background(Color.green).blur(radius:0.5)
/*
let myText = "Hello World!"
VStack {
    Spacer()
    Image("logo")
        .resizable()
        .aspectRatio(contentMode: .fit)
    Spacer()
    Text(myText).padding().background(Color.green).blur(radius:0.5)
    Spacer()
}
**/
