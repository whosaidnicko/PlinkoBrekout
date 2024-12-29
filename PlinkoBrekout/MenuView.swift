//
//  MenuView.swift
//  PlinkoBrekout
//
//  Created by Nicolae Chivriga on 28/12/2024.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var rootManager: RootManager
    var body: some View {
        VStack {
           Image("logotip")
            
            Spacer()
            
            VStack(spacing: 20) {
                navigationButton(changeView: .game, text: "GAME")
                
                navigationButton(changeView: .rules, text: "RULES")
                
                navigationButton(changeView: .options, text: "SETTINGS")
            }
            .padding(.top, 40)
        }
    }
    
    func navigationButton(changeView: PresentedView, text: String) -> some View {
            Button {
                rootManager.changeView(changeView)
            } label: {
                ZStack {
                Image("rect")
                        Text(text)
                            .font(.system(size: 43, weight: .heavy, design: .rounded))
                            .foregroundColor(Color.white)
                    }
            }

    
    }
}
