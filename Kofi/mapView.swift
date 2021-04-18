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
    //ALL Locations can be stored here.
    private let places: [Location] = [
        Location(coordinate: CLLocationCoordinate2D(latitude: 37.8691, longitude: -122.2549)), //Cafe Strada
        Location(coordinate: CLLocationCoordinate2D(latitude: 37.8686, longitude: -122.2586)), //Cafe Milano
        Location(coordinate: CLLocationCoordinate2D(latitude: 37.8683, longitude: -122.2607)) //Cafe Ohlone

    ]
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.8715, longitude: -122.2730),
        span: MKCoordinateSpan(latitudeDelta: 0.025, longitudeDelta: 0.025))
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places, annotationContent: {
                place in MapPin(coordinate: place.coordinate, tint: .black)})
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    }
}

struct Location: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
    
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
