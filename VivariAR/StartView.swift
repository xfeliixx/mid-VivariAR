//
//  StartView.swift
//  VivariAR
//
//  Created by Felix Bick on 15.09.21.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        ZStack {
            Color(.init("offWhite"))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                HStack(spacing: -100) {
                    HStack(spacing: -200) {
                        VerticalText(text: "Kalkriese")
                        VerticalText(text: "Museum")
                    }
                    Image("mask")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 600)
                        .padding(.trailing,80.0)
                    
                }
                
//                Button(action: {
//                        Label("Start Experience", systemImage: "folder.badge.plus")
//                    }
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

struct VerticalText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 100, weight: .black, design: .default))
            .foregroundColor(.init("pinkAccent"))
            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            .frame(width: 600, height: 300, alignment: .center)
            .rotationEffect(.init(degrees: -90))
            .padding(-160)
    }
    
}
