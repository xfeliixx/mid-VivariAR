//
//  TreasureDetailView.swift
//  VivariAR
//
//  Created by Felix Bick on 16.08.21.
//

import SwiftUI

struct TreasureDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var tresure: Treasure?
    
    var body: some View {
        ZStack {
            //Foreground
            VStack(spacing: 40) {
                
                //Close Button
                HStack() {
                    Spacer()
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                    .padding(.trailing)
                    
                }
                //MainContent
                VStack(spacing: 40) {
                    //Icon
                    TreasurIcon(imageName: tresure?.imageName ?? "")
                    
                    //Text
                    VStack {
                        HeadText(tex: tresure?.name ?? "")
                            .padding(10)
                        Text(tresure?.description ?? "")
                            .padding(.horizontal, 40)
                    }
                }
                
                
            }
        }
    }
}

struct TreasureDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TreasureDetailView(tresure: Treasure(name: "this is a test", imageName: "Treasure2", description: "Lorem ipsum"))
            .preferredColorScheme(.dark)
    }
}

// Struct for Head Text
struct HeadText: View {
    let tex: String
    
    var body: some View {
        Text(tex)
            .font(.title)
            .fontWeight(.bold)
            .textCase(.uppercase)
        
    }
}
