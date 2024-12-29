//
//  RulesView.swift
//  PlinkoBrekout
//
//  Created by Nicolae Chivriga on 28/12/2024.
//

import SwiftUI

struct RulesView: View {
    @EnvironmentObject private var navigationManager: RootManager
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        navigationManager.changeView(.menu)
                    } label: {
                        BackButton()
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            Image("ruleImg")
                
                    Text("""
Break all the blocks by controlling the paddle and the ball. Move the paddle to keep the ball from falling and destroy blocks to increase your score. You have 3 lives—lose one if the ball falls. Good luck!
""")
                    .font(.system(size: 15, weight: .semibold, design: .serif))
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .padding(.horizontal, 70)
                
        }
    }
}
