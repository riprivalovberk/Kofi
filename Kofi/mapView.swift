//
//  mapView.swift
//  Kofi
//
//  Created by muca on 4/16/21.
//

import Foundation
import SwiftUI
import MapKit


struct mapView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
        UINavigationBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 0
    @State var shouldShowModal = false
    
    let tabBarImageNames = ["list.bullet", "map", "person"]
    
    var body: some View {
        VStack(spacing: 0) {
            
            ZStack {
                
                
                switch selectedIndex {
                
                case 0:
                    NavigationView {
                        ScrollView {
                            FilterView()
                        }
                    }.navigationTitle("Find your groove.")
                    
                    
                case 1:
                    NavigationView {
                        Map(coordinateRegion: $region, annotationItems: places, annotationContent: {
                                place in MapPin(coordinate: place.coordinate, tint: .black)})
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                case 2:
                    NavigationView {
                        AccountView()
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                default:
                    NavigationView {
                        Map(coordinateRegion: $region, annotationItems: places, annotationContent: {
                                place in MapPin(coordinate: place.coordinate, tint: .black)})
                        
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    
                }
                
            }
            
//            Spacer()
            
            Divider()
                .padding(.bottom, 8)
            
            HStack {
                ForEach(0..<3) { num in
                    Button(action: {
                        
                        
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        
                        if num == 1 {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 44, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.blue) : .init(white: 0.8))
                        } else {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.8))
                        }
                        
                        
                        Spacer()
                    })
                    
                }
            }
            
            
        }
    }
    
    //ALL Locations can be stored here.
    private let places: [Location] = [
        Location(name: "Cafe Starda", coordinate: CLLocationCoordinate2D(latitude: 37.8691, longitude: -122.2549)), //Cafe Strada
        Location(name: "Cafe Milano", coordinate: CLLocationCoordinate2D(latitude: 37.8686, longitude: -122.2586)), //Cafe Milano
        Location(name: "Cafe Ohlone", coordinate: CLLocationCoordinate2D(latitude: 37.8683, longitude: -122.2607)) //Cafe Ohlone

    ]
    
    //ALL Locations can be stored here.
    private let placesForRows = [
        Location(name: "Cafe Starda", coordinate: CLLocationCoordinate2D(latitude: 37.8691, longitude: -122.2549)), //Cafe Strada
        Location(name: "Cafe Milano", coordinate: CLLocationCoordinate2D(latitude: 37.8686, longitude: -122.2586)), //Cafe Milano
        Location(name: "Cafe Ohlone", coordinate: CLLocationCoordinate2D(latitude: 37.8683, longitude: -122.2607)) //Cafe Ohlone

    ]
    
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.8715, longitude: -122.2730),
        span: MKCoordinateSpan(latitudeDelta: 0.025, longitudeDelta: 0.025))
}

struct Location: Identifiable {
    let id = UUID()
    let name: String
    var coordinate: CLLocationCoordinate2D
    
}

struct CafeRow: View {
    var cafe: Location

    var body: some View {
        Text("Come and work at \(cafe.name)")
    }
}


/*
struct City: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct MapExample: View {
    @State private var cities: [City] = [
        City(coordinate: .init(latitude: 40.7128, longitude: 74.0060)),
        City(coordinate: .init(latitude: 37.7749, longitude: 122.4194)),
        City(coordinate: .init(latitude: 47.6062, longitude: 122.3321))
    ]

    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 25.7617, longitude: 80.1918),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    )

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: cities) { city in
            MapAnnotation(
                coordinate: city.coordinate,
                anchorPoint: CGPoint(x: 0.5, y: 0.5)
            ) {
                Circle()
                    .stroke(Color.green)
                    .frame(width: 44, height: 44)
            }
        }
    }
}
*/

/*
 ScrollView {
 VStack {
     VStack {
         Spacer()
         Image("strada")
             //.resizable()
             .padding(.bottom, 1.0)
             .frame(width: 4.0, height: 2)
         Text("Cafe Strada")
             .bold()
             .font(.system(size: 14))
             
         Text("Sponsored | Few Seats Available | High Speed Wifi | 8 min.")
             .font(.system(size: 10))
             
     }
 }
}
 */
