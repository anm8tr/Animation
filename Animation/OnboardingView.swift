//
//  OnboardingView.swift
//  Animation
//
//  Created by Richard Garrison on 5/26/22.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
     // MARK: - DECLARE RIVE ASSET AT BEGINNING
    let button = RiveViewModel(fileName: "button")
    var body: some View {
        ZStack {
            background
            button.view()
                .frame(width: 236, height: 64)
                .overlay(
                    Label("Start the course", systemImage: "arrow.forward")
                        .offset(x: 4, y: 4)
                        .font(.headline)
                ) // MARK: - ADD DROP SHADOW TO BUTTON
                .background(
                    Color.black
                .cornerRadius(30)
                .blur(radius: 10)
                .opacity(0.3)
                )
             // MARK: - ADD GESTURE TO TRIGGER ANIMATION
                .onTapGesture {
                    button.play(animationName: "active")
                }
                 
            
        } // MARK: - END ZSTACK
        
    }
    var background: some View {
        RiveViewModel(fileName: "shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(
                Image("Spline")
                    .blur(radius: 50)
                    .offset(x:200, y: 100)
            
        )
    }
}



struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
