//
//  ChickenAndChipsApp.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

@main
struct ChickenAndChipsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(HSingleton.shared)
                .environment(\.colorScheme, .light)
        }
    }
}
