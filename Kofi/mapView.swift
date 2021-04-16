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
        Location(coordinate: CLLocationCoordinate2D(latitude: 37.8686, longitude: 122.2586))
    ]
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.8715, longitude: 122.2730),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
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


