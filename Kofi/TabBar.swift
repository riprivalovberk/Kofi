//
//  TabBar.swift
//
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationView {
                
            }
            .tag(0)
            .tabItem {
                Image("activity-1")
                    .resizable()
                Text("Activities")
            }
            
            NavigationView {
                mapView()
            }
            .tag(1)
            .tabItem {
                Image("map-icon")
                Text("Map")
            }
            
            NavigationView {
                AccountView()
                  }
                   .tag(2)
                    .tabItem {
                    Image("contact")
                    Text("Account")
                }
        }
    }
}
/*
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(mapView)
    }
}
*/


