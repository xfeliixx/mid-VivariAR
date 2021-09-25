//
//  StartView.swift
//  VivariAR
//
//  Created by Felix Bick on 15.08.21.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            //Main ZStack
            ZStack {
                //Background
                Color(.init("StartBackground"))
                    .edgesIgnoringSafeArea(.all)
                
                //Content VStack
                VStack(spacing: 50){
                    //Top Text with Mask Image
                    HStack(spacing: -100) {
                        HStack(spacing: -200) {
                            VerticalText(text: "Kalkriese")
                            VerticalText(text: "Museum")
                        }
                        Image("Mask")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 600)
                            .padding(.trailing,80.0)
                        
                    }
                    
                    //Start Button
                    //Navigates to MapView
                    NavigationLink(destination: MapView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color(UIColor.systemBackground))
                            
                            Text("Start Experience")
                                .font(.system(size: 20, weight: .semibold, design: .default))
                                .foregroundColor(Color(UIColor.label))
                                .padding()
                        }
                    }
                    .frame(width: 300, height: 50)
                    .colorInvert()
                    .padding()
                }
                //Tresure Button on Top in front of everything else
                TresureButton()
            }
            .navigationBarTitle("Start")
            .navigationBarHidden(true)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartView()
                .preferredColorScheme(.dark)
        }
    }
}

// Struct for Vertical Text on the Left
struct VerticalText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 100, weight: .black, design: .default))
            .foregroundColor(Color("PinkAccent"))
            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            .frame(width: 600, height: 300, alignment: .center)
            .rotationEffect(.init(degrees: -90))
            .padding(-160)
    }
}

// Struct for the Tresure Button on Top
struct TresureButton: View {
    var body: some View {
        VStack {
            HStack() {
                
                //Workaround due to a SwiftUI Bug that is moving the NavLink out of screen
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                //Navigates to TreasurView
                NavigationLink(destination: TreasureView()) {
                    ZStack {
                        Circle()
                            .fill(Color(UIColor.systemBackground))
                            .frame(width: 50, height: 50)
                            .padding()
                            .colorInvert()
                        Image(systemName: "cube")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(UIColor.systemBackground))
                    }
                }
                Spacer()
            }
            Spacer()
        }
    }
}
