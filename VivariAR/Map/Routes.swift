//
//  Routes.swift
//  VivariAR
//
//  Created by Felix Bick on 19.08.21.
//

import Foundation

struct Route: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}


struct RouteData {
    static let Routes = [
        
        Route(name: "Roman Way",
              imageName: "test")
        ,
        Route(name: "German Way",
              imageName: "MaskFull"),
        
        Route(name: "Explorer Path",
              imageName: "MaskFull"),
        
        Route(name: "13 Years",
              imageName: "MaskFull"),
        
        Route(name: "Long Way",
              imageName: "MaskFull"),
        
        Route(name: "Stuff",
              imageName: "MaskFull"),
        
    ]
    
}
