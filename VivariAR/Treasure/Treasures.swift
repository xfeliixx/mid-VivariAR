//
//  Treasures.swift
//  VivariAR
//
//  Created by Felix Bick on 19.08.21.
//
// Tresaure Data for All Tresures Views

import Foundation

struct Treasure: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
}


struct TreasureData {
    static let Tresures = [
        
        Treasure(name: "Roman Spoon",imageName: "Treasure2", description: """
"""),
        Treasure(name: "Roman Mask",imageName: "Treasure3", description: """

"""),
        Treasure(name: "Victory Statue",imageName: "Treasure4", description: """

"""),
        Treasure(name: "Spear tip",imageName: "Treasure5", description: """

"""),
        Treasure(name: "Signet ring",imageName: "Treasure6", description: """

"""),
        Treasure(name: "Bullet",imageName: "Treasure7", description: """

"""),
        Treasure(name: "Wax tablets",imageName: "Treasure8", description: """
Sie diente dem Schutz von Briefsiegeln, vor allem bei Wachstäfelchen. Hierzu wurde das zugeklappte und beschriftete Täfelchen mit Schnüren verpackt und deren Enden durch die runden Öffnungen der Kapsel geführt. Dort wurden sie dann mit Siegelwachs beträufelt und dieses mit einem Siegelring besiegelt.
"""),
        Treasure(name: "Wine decanter",imageName: "Treasure9", description: """

"""),
        Treasure(name: "Test",imageName: "Treasure10", description: """
"""),
    ]
    
}
