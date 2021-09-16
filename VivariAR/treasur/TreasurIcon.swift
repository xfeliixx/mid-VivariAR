//
//  TreasurIcon.swift
//  VivariAR
//
//  Created by Felix Bick on 16.09.21.
//

import SwiftUI

struct TreasurIcon: View {
    var body: some View {
        Image("treasur1")
            .clipShape(Circle())
        .overlay(Circle().stroke(.gray, lineWidth: 3))
        
    }
}

struct TreasurIcon_Previews: PreviewProvider {
    static var previews: some View {
        TreasurIcon()
    }
}
