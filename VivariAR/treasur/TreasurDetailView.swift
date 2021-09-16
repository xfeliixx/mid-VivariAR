//
//  TreasurDetailView.swift
//  VivariAR
//
//  Created by Felix Bick on 16.09.21.
//

import SwiftUI

struct TreasurDetailView: View {
    
    let exTest: String = """
diente dem Schutz von Briefsiegeln, vor allem bei Wachstäfelchen. Hierzu wurde das zugeklappte und beschriftete Täfelchen mit Schnüren verpackt und deren Enden durch die runden Öffnungen der Kapsel geführt. Dort wurden sie dann mit Siegelwachs beträufelt und dieses mit einem Siegelring besiegelt
"""
    
    var body: some View {
        VStack {
            TreasurIcon()
            Spacer()
            VStack {
                HeadText(tex: "Die Siegelkapsel")
                    .font(.headline)
                Text(exTest)
            }
        }
    }
}

struct TreasurDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TreasurDetailView()
    }
}

struct HeadText: View {
    let tex: String
    
    var body: some View {
        Text(tex)
        
    }
}
