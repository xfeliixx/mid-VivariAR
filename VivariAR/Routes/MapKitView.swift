//
//  MapKitView.swift
//  VivariAR
//
//  Created by Felix Bick on 09.06.22.
//

import Foundation
import SwiftUI
import UIKit
import MapKit

struct MapKitView: View {
    var body: some View {
        MapView()
    }
}
    

struct MapView: UIViewRepresentable {
    
    let region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 52.407678,
            longitude: 8.127572
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.002,
            longitudeDelta: 0.002
        )
    )
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let map = MKMapView()
        map.region = region
        map.isPitchEnabled = true
        map.isScrollEnabled = false
        map.isZoomEnabled = false

        return map
    }

    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
    }
}


