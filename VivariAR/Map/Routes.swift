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
              imageName: "MaskFull")
        ,
        Route(name: "German Way",
              imageName: "MaskFull"),
        
        Route(name: "Explorer Path",
              imageName: "MaskFull"),
        
        Route(name: "Experience Walk",
              imageName: "MaskFull"),
        
        Route(name: "History Spots",
              imageName: "MaskFull"),
        
        Route(name: "Local Route",
              imageName: "MaskFull"),
        
    ]
}
