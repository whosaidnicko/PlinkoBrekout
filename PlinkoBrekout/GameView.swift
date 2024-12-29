//
//  GameView.swift
//  PlinkoBrekout
//
//  Created by Nicolae Chivriga on 28/12/2024.
//

import SwiftUI


struct GameView: View {
    @EnvironmentObject private var navigationManager: RootManager
    @State var animationRepeating: Bool = false
    var body: some View {
        ZStack {
            Image("logotip")
                .scaleEffect(animationRepeating ? 1 : 0.8)
            VStack(spacing: 0) {
                HStack {
                    Button {
                        navigationManager.changeView(.menu)
                    } label: {
                        BackButton()
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
            
                
                WKWebViewRepresentable(url: URL(string: "https://plays.org/game/breakout-bricks/")!, onLoadCompletion: {
                })

            }
            
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: 2).repeatForever()) {
                animationRepeating = true
            }
        }
    }
}
