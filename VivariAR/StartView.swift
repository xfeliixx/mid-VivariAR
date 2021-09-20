//
//  StartView.swift
//  VivariAR
//
//  Created by Felix Bick on 15.08.21.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        //Main ZStack
        ZStack {
            //Background
            Color(.init("OffWhite"))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            //Content VStack
            VStack (spacing: 50){
                //Top Text with Mask Image
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
                
                //Start Button
                Button(action: {
                    print("Start")
                }){
                    Text("Start Experience")
                        .font(.system(size: 20, weight: .semibold, design: .default))
                        .foregroundColor(.black)
                        .padding()
                }
                
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

// Text struct for Vertical Text on the Left
struct VerticalText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 100, weight: .black, design: .default))
            .foregroundColor(Color.accentColor)
            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            .frame(width: 600, height: 300, alignment: .center)
            .rotationEffect(.init(degrees: -90))
            .padding(-160)
    }
    
}
