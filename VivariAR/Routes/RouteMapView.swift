//
//  RoutesMapView.swift
//  VivariAR

//  !!Not in use replaced by MapKitView
//  Created by Felix Bick on 09.06.22.
//

import SwiftUI
import MapKit

//Struct for the Route Map with Kalkirese Coordinates
struct RoutesMapView: View {
            @State private var region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: 52.407678,
                    longitude: 8.127572
                ),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.005,
                    longitudeDelta: 0.005
                )
            )
            
            var body: some View {
            Map(coordinateRegion: $region, interactionModes: .pan )
            }
        }

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        RoutesMapView()
            .preferredColorScheme(.dark)
        
    }
}
