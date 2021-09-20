//
//  TreasurDetailView.swift
//  VivariAR
//
//  Created by Felix Bick on 16.08.21.
//

import SwiftUI

struct TreasurDetailView: View {
    
//    Only Temp -> get data from Service
    let exTest: String = """
Sie diente dem Schutz von Briefsiegeln, vor allem bei Wachstäfelchen. Hierzu wurde das zugeklappte und beschriftete Täfelchen mit Schnüren verpackt und deren Enden durch die runden Öffnungen der Kapsel geführt. Dort wurden sie dann mit Siegelwachs beträufelt und dieses mit einem Siegelring besiegelt.
"""
    
    
    var body: some View {
        NavigationView {
            ZStack {
                //Background Color
                Color(.white)
                
                //Icon
                VStack(spacing: 40) {
                    TreasurIcon(imageName: "Tresure1")
                    
                    //Text Card
                    ZStack {
                        //Background
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color("OffWhite"))
                            .shadow(radius: 10)
                        //Text
                        VStack {
                            HeadText(tex: "Die Siegelkapsel")
                                .padding(10)
                            Text(exTest)
                                .padding(.horizontal, 40)
                        }
                    }
                    .ignoresSafeArea()
                }
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
            .font(.title)
            .fontWeight(.bold)
            .textCase(.uppercase)
        
    }
}
