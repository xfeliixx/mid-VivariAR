//
//  MapView.swift
//  VivariAR
//
//  Created by Felix Bick on 19.08.21.
//


import SwiftUI
import MapKit

struct MapView: View {
    
    //Grid Rows
    let row: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack {
                //Grid with Routs
                LazyHGrid(rows: row) {
                    ForEach(RouteData.Routes, id: \.id) { Route in
                        RouteItem(route: Route)
                    }
                    
                }
                .navigationBarTitle(Text("Routes"))
                .padding(.bottom, 50)
                
                //Map
                RouteMap()
                    .ignoresSafeArea()
                
            }
        }
    }
        
        struct MapView_Previews: PreviewProvider {
            static var previews: some View {
                MapView()
            }
        }
        struct RouteItem:  View {
            let route: Route
            var body: some View {
                VStack {
                    Image(route.imageName)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .padding()
                    
                    Text(route.name)
                        .font(.body)
                        .fontWeight(.semibold)
                        .scaledToFit()
                        .minimumScaleFactor(0.6)
                }
            }
            
        }
    
    struct RouteMap: View {
        @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 52.407678,
                longitude: 8.127572
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05
            )
        )

        var body: some View {
            Map(coordinateRegion: $region)
        }
    }
}
