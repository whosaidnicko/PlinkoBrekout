//
//  LoadingS.swift
//  PlinkoBrekout
//
//  Created by Nicolae Chivriga on 28/12/2024.
//

import SwiftUI


struct LoadingView: View {
    @EnvironmentObject private var navigationManager: RootManager
    @State var animationGoing: Bool = false
    var body: some View {
        VStack {
            Image("logotip")
            
            ZStack {
                Text("Loading...")
                    .font(.system(size: 30, weight: .black, design: .default))
                    .foregroundColor(.white)
                ]
                    
            }
                .rotationEffect(.degrees(animationGoing ? 1080 : 0))
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: 3.2)) {
                animationGoing = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.2) {
                navigationManager.changeView(.menu)
            }
        }
    }
}
