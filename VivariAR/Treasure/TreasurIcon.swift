//
//  TreasurIcon.swift
//  VivariAR
//
//  Created by Felix Bick on 16.08.21.
//

import SwiftUI

//Tresur Icon
struct TreasurIcon: View {
    
    let imageName: String
    var body: some View {
        Image(imageName)
            .clipShape(Circle())
        
    }
}

struct TreasurIcon_Previews: PreviewProvider {
    static var previews: some View {
        TreasurIcon(imageName: "Treasure2")
    }
}
