//
//  Routes.swift
//  VivariAR
//
//  Created by Felix Bick on 19.08.21.
//
// Routes Data for MapView

import Foundation

struct Route: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}


struct RouteData {
    static let Routes = [
        
        Route(name: "Roman Way",
              imageName: "Route3")
        ,
        Route(name: "German Way",
              imageName: "Route4"),
        
        Route(name: "Explorer Path",
              imageName: "Route2"),
        
        Route(name: "Experience Walk",
              imageName: "Route5"),
        
        Route(name: "History Spots",
              imageName: "Route1"),
        
        Route(name: "Local Route",
              imageName: "Route6"),
        
    ]
}
