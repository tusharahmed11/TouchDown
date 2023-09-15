//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Tushar ahmed on 12/9/23.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
