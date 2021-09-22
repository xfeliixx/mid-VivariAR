//
//  MapView.swift
//  VivariAR
//
//  Created by Felix Bick on 19.08.21.
//


import SwiftUI
import MapKit

struct MapView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var isPresented = false
    @State private var selectedRoute: Route? = nil

    //Grid Rows
    let row: [GridItem] = [GridItem(.flexible()),
                           GridItem(.flexible())]
    
    var body: some View {
        VStack {
            //Grid with Routs
            LazyHGrid(rows: row) {
                ForEach(RouteData.Routes, id: \.id) { Route in
                    VStack {
                        ZStack {
                            Image(Route.imageName)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            if selectedRoute == Route {
                                Circle()
                                    .fill(Color("PinkAccent"))
                                    .frame(width: 60, height: 60)
                                    .opacity(0.6)
                            }
                        }
                        .frame(width: 90, height: 90)
                        
                        Text(Route.name)
                            .font(.body)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.7)
                            .lineLimit(2)
                        
                    }
                    .frame(width: 100, height: 100)
                    .padding()
                    .onTapGesture {
                        self.selectedRoute = Route
                    }
                }
            }
            .padding(.bottom, 50)
            
            ZStack {
                //Map
                RouteMap()
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        // Start AR Button
                        NavigationLink(destination: ArView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(Color(UIColor.systemBackground))
                                
                                HStack {
                                    if colorScheme == .dark {
                                        Image("Glyph-ARKit-Control-Label")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(.vertical, 5)
                                            .colorInvert()
                                    } else {
                                        Image("Glyph-ARKit-Control-Label")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding(.vertical, 5)
                                    }
                                    
                                    Text("Start in AR")
                                        .foregroundColor(Color(UIColor.label))
                                        .font(.body)
                                        .padding(.trailing, 5)
                                }
                            }
                        }
                        .frame(width: 165, height: 50)
                        .padding(20)
                    }
                }
            }
        }
        .navigationTitle("Routes")
    }
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
                .preferredColorScheme(.dark)
            
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
                
                Text(route.name)
                    .font(.body)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
            }
            .padding()
        }
    }
    
    struct RouteMap: View {
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
            Map(coordinateRegion: $region)
        }
    }
}
