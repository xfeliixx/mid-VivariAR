//
//  TreasureView.swift
//  VivariAR
//
//  Created by Felix Bick on 16.08.21.
//

import SwiftUI

struct TreasureView: View {
    @StateObject var viewModel = TreasureViewModel()
    
    
    
    //Grid Collums
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            //Grid
            LazyVGrid(columns: columns) {
                ForEach(TreasureData.Tresures, id: \.id) { tresureThing in
                    TreasureItem(tresure: tresureThing)
                        .onTapGesture {
                            viewModel.selectedTresure = tresureThing
                        }
                }
                
            }.navigationBarTitle(Text("Treasures"))
            //Modal
                .sheet(isPresented: $viewModel.isShowing) {
                    TreasureDetailView(tresure: viewModel.selectedTresure)
                }
            
        }
    }
    
}

struct TreasurView_Previews: PreviewProvider {
    static var previews: some View {
        TreasureView()
    }
}

//Struct for the TresureItem
struct TreasureItem:  View {
    let tresure: Treasure
    var body: some View {
        Image(tresure.imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .padding()
        
    }
    
}
