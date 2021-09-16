//
//  TreasurDetailView.swift
//  VivariAR
//
//  Created by Felix Bick on 16.09.21.
//

import SwiftUI

struct TreasurDetailView: View {
    
    let exTest: String = """
Sie diente dem Schutz von Briefsiegeln, vor allem bei Wachstäfelchen. Hierzu wurde das zugeklappte und beschriftete Täfelchen mit Schnüren verpackt und deren Enden durch die runden Öffnungen der Kapsel geführt. Dort wurden sie dann mit Siegelwachs beträufelt und dieses mit einem Siegelring besiegelt
"""
    
    
    var body: some View {
        ZStack {
            //Background Color
            Color.accentColor
                .ignoresSafeArea()
            
            //Icon
            VStack(spacing: 70) {
                TreasurIcon()
                
                //Text Card
                ZStack {
                    //Background
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(.white))
                        .shadow(radius: 10)
                    //Text
                    VStack(spacing: -25) {
                        HeadText(tex: "Die Siegelkapsel")
                        Text(exTest)
                            .padding(40)
                    }
                }
                .ignoresSafeArea()
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
            .font(.system(size: 32, weight: .bold, design: .default))
            .textCase(.uppercase)
        
    }
}
