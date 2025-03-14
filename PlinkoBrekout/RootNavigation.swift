//
//  RootNavigation.swift
//  PlinkoBrekout
//
//  Created by Nicolae Chivriga on 28/12/2024.
//


import SwiftUI


final class RootManager: ObservableObject {
    @Published var presentedView: PresentedView = .loading
    
    func changeView(_ view: PresentedView) {
        withAnimation {
            presentedView = view
        }
    }
}

enum PresentedView {
    case loading
    case menu
    case options
    case game
    case rules
}
