//
//  ArView.swift
//  VivariAR
//
//  Created by Felix Bick on 14.08.21.
//

import SwiftUI
import RealityKit
import ARKit


//AR View
struct ArView : View {
    var body: some View {
        
        return ARViewContainer()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}
//initiate the AR Experience Project
struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        arView.addCoaching()
        
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = .horizontal
        arView.session.run(config, options: [])
        
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

// Create a ARCoachingOverlayView object to hep the user calibrate the device for AR by moving it around
extension ARView: ARCoachingOverlayViewDelegate {
    func addCoaching() {
        // Create a ARCoachingOverlayView object
        let coachingOverlay = ARCoachingOverlayView()
        
        coachingOverlay.autoresizingMask = [
            .flexibleWidth, .flexibleHeight
        ]
        self.addSubview(coachingOverlay)
        
        // Set the Augmented Reality goal Plane
        coachingOverlay.goal = .horizontalPlane
        // Set the ARSession
        coachingOverlay.session = self.session
        // Set the delegate for any callbacks
        coachingOverlay.delegate = self
    }
    public func coachingOverlayViewDidDeactivate(
        _ coachingOverlayView: ARCoachingOverlayView
    ) {

        let boxAnchor = try! Experience.loadCamp()
        
        // Add the box anchor to the scene
        self.scene.anchors.append(boxAnchor)
    }
}
