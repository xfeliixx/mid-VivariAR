//
//  ArView.swift
//  VivariAR
//
//  Created by Felix Bick on 14.09.21.
//

import SwiftUI
import RealityKit

struct ArView : View {
    var body: some View {
        return ARViewContainer()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ArView_Previews : PreviewProvider {
    static var previews: some View {
        ArView()
    }
}
#endif
