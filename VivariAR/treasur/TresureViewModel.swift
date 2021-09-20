//
//  TresureViewModel.swift
//  VivariAR
//
//  Created by Felix Bick on 20.08.21.
//

import SwiftUI

final class TresureViewModel: ObservableObject {
    var selectedTresure: Tresure? {
        didSet {
            isShowing = true
        }
    }
  
    @Published var isShowing = false
}
