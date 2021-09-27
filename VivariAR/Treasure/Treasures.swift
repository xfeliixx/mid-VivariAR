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
        
        Treasure(name: "silver spoon",imageName: "Treasure2", description: """
This typical Roman spoon has a pointed handle with which previously chopped morsels could be speared. The Romans did not use forks as eating utensils. The handle was subsequently bent testimony to the high Roman dining culture.
"""),
        Treasure(name: "Riding helmet face mask",imageName: "Treasure3", description: """
The symbol for the Varus Battle Museum. Earliest known specimen. The mask was originally covered with silver sheet, which was subsequently cut out. The iron base of the mask was left behind.

"""),
        Treasure(name: "Sealing capsule",imageName: "Treasure4", description: """
Sealing capsules were used to protect letter seals, especially wax tablets. For this purpose, the closed and inscribed tablet was packed with strings and their ends were passed through the round openings of the capsule. There they were then sprinkled with sealing wax and this was "sealed" with a sealing ring. The poorly preserved relief of a bust on the flap lid unfortunately gives no clue as to the person depicted.
"""),
        Treasure(name: "Plumb line",imageName: "Treasure5", description: """
This leaden plumb bob was probably part of a "groma", a Roman surveying instrument used, among other things, in the construction of military camps. In the opening at the top there are still remains of wood, probably from the suspension of the plumb bob.

"""),
        Treasure(name: "Signet ring",imageName: "Treasure6", description: """
This bronze head shows an Augustan, i.e. contemporary hairstyle and may possibly be a portrait. Remains of the support object are preserved at the back edge, but it is not known to what the fitting was attached. An almost fully plastic Roman head with a contemporary hairstyle, practically the image of a Roman at the time of the "battle", looks directly at the viewer.
"""),
        Treasure(name: "Handle sieve",imageName: "Treasure7", description: """
The bronze sieve was used to filter spices from Roman spiced wine, and is thus also evidence of the exalted of the Roman soldiers or O ziere. The sieve was forcibly pressed in and pierced with a rhombic point from the inside to the outside, and with a round point from the outside to the inside.

"""),
        Treasure(name: "coin",imageName: "Treasure8", description: """
The coin itself is heavily degraded, but the tissue for it is surprisingly well preserved and adheres to both sides. The tissue is flush with the axis. In the edge area runs a seam or the base of another piece.

"""),
        Treasure(name: "Amulet",imageName: "Treasure9", description: """
        Amulet that was usually attached to the bridle of draft or riding animals and was supposed to protect them from the "evil eye".
"""),
        
        Treasure(name: "Essays in the form of delnen",imageName: "Treasure10", description: """
Two almost identical bronze delne attachments, found about 2.50 m apart, length: 2.6 cm. Delne on the Oberesch, that's something.
"""),
    ]
    
}
 
