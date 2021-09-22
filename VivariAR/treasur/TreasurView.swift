//
//  TreasurView.swift
//  VivariAR
//
//  Created by Felix Bick on 16.08.21.
//

import SwiftUI

struct TreasurView: View {
    @StateObject var viewModel = TresureViewModel()
    
    
    
    //Grid Collums
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            //Grid
            LazyVGrid(columns: columns) {
                ForEach(TreasurData.Tresures, id: \.id) { tresureThing in
                    TresureItem(tresure: tresureThing)
                        .onTapGesture {
                            viewModel.selectedTresure = tresureThing
                        }
                }
                
            }.navigationBarTitle(Text("Treasures"))
                .padding(.horizontal)
                .sheet(isPresented: $viewModel.isShowing) {
                    TreasurDetailView(tresure: viewModel.selectedTresure)
                }
            
        }
    }
    
}

struct TreasurView_Previews: PreviewProvider {
    static var previews: some View {
        TreasurView()
    }
}

struct TresureItem:  View {
    let tresure: Tresure
    var body: some View {
        Image(tresure.imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .padding()
        
    }
    
}
