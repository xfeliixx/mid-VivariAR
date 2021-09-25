//
//  TreasureViewModel.swift
//  VivariAR
//
//  Created by Felix Bick on 20.08.21.
//
// ViewModel conforms to the MVVM-Concept
// It handels the binding of the View and the Data

//Here it triggers the Model to open and close

import SwiftUI

final class TreasureViewModel: ObservableObject {
    @Published var isShowing = false
    
    var selectedTresure: Treasure? {
        didSet {
            isShowing = true
        }
    }
    
}
