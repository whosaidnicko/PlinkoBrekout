//
//  BackButton.swift
//  PlinkoBrekout
//
//  Created by Nicolae Chivriga on 28/12/2024.
//

import SwiftUI


struct BackButton: View {
    @EnvironmentObject private var rootManager: RootManager
    var body: some View {
        Image("bj")
            .onTapGesture {
                rootManager.changeView(.menu)
            }
    }
}
