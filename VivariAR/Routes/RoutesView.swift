//
//  RoutesView..swift
//  VivariAR
//
//  Created by Felix Bick on 19.08.21.
//


import SwiftUI

struct RoutesView: View {
    
    var body: some View {
        //Main Zstack with Content on the First Layer and the Tresaueres Icon on top of all as a second layer
        ZStack {
            VStack {
                //RouteSelection grid
                RouteSelectionGrid()
                
                //MapView
                MapKitView()
                    .ignoresSafeArea()
                
            }
        }
        //Title for this View
        .navigationTitle("Routes")
        
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                Spacer()
            }
            ToolbarItem(placement: .bottomBar) {
                //Tresure Button on Top in front of everything else
                TresureButton()
            }
            ToolbarItem(placement: .bottomBar) {
                // Start AR Button
                NavigationLink(destination: AugmentedView()) {
                    ARButton()
                }
            }
        }
        
    }
    
    struct RoutesView_Previews: PreviewProvider {
        static var previews: some View {
            RoutesView()
                .preferredColorScheme(.dark)
            
        }
    }
    
    // Struct for the Tresure Button
    struct TresureButton: View {
        var body: some View {
            
            //Navigates to TreasurView
            NavigationLink(destination: TreasureView()) {
                ZStack {
                    Circle()
                        .fill(Color(UIColor.systemBackground))
                        .frame(width: 50, height: 50)
                        .padding()
                        .colorInvert()
                    Image(systemName: "cube")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color(UIColor.systemBackground))
                }
            }
            .padding(.trailing, -20)
        }
    }
    
    struct ARButton: View {
        // reads system color Scheme
        @Environment(\.colorScheme) var colorScheme
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color(UIColor.systemBackground))
                
                //Dark Mode Icon Support
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
                .frame(width: 165, height: 50)
            }
        }
    }
}

struct RouteSelectionGrid: View {
    // Currently Selected Route
    @State private var selectedRoute: Route? = nil
    //Bool if the Marker is presented
    @State private var isPresented = false
    
    //Grid Rows
    let row: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        //HGrid with Routes
        LazyHGrid(rows: row) {
            ForEach(RouteData.Routes, id: \.id) { Route in
                VStack {
                    ZStack {
                        Image(Route.imageName)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        //Selected Route Red Marker
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
        .padding([.leading, .bottom, .trailing])
    }
}

